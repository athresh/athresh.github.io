require 'bibtex'
require 'cgi'

module Jekyll
  class GenerateCvPublications < Generator
    safe true
    priority :low

    def generate(site)
      bibliography_path = File.join(site.source, '_bibliography', 'papers.bib')
      return unless File.exist?(bibliography_path)

      bibliography = BibTeX.open(bibliography_path)
      publications = bibliography.each_with_index.filter_map do |entry, index|
        next unless entry.is_a?(BibTeX::Entry)

        build_publication(site, entry, index)
      end

      site.data['generated_publications'] = publications
      site.data['generated_publications_by_type'] = publications.group_by { |publication| publication['pubtype'] }
    end

    private

    def build_publication(site, entry, index)
      year = entry[:year].to_s.strip
      year_value = year.empty? ? 0 : year.to_i
      pubtype = entry[:pubtype].to_s.strip

      {
        'key' => entry.key.to_s,
        'pubtype' => pubtype,
        'title' => preferred_title(entry),
        'institution' => publication_venue(entry, pubtype),
        'year' => year,
        'maindescription' => formatted_authors(site, entry),
        'pdf' => publication_pdf_path(entry),
        'sort_key' => format('%04d-%04d', year_value, 10_000 - index)
      }
    end

    def preferred_title(entry)
      custom_title = entry[:cv_title].to_s.strip
      return custom_title unless custom_title.empty?

      entry[:title].to_s.strip
    end

    def publication_venue(entry, pubtype)
      custom_venue = entry[:cv_venue].to_s.strip
      return custom_venue unless custom_venue.empty?

      school = entry[:school].to_s.strip
      return school unless school.empty?

      how_published = entry[:howpublished].to_s.strip
      return how_published unless how_published.empty?

      booktitle = entry[:booktitle].to_s.strip
      unless booktitle.empty?
        abbr = entry[:abbr].to_s.strip
        year = entry[:year].to_s.strip
        return booktitle if abbr.empty? || year.empty?

        return "#{booktitle} (#{abbr} #{year})"
      end

      note = entry[:note].to_s.strip
      return note unless note.empty?

      return 'Preprint' if pubtype == 'preprint'

      ''
    end

    def publication_pdf_path(entry)
      pdf = entry[:pdf].to_s.strip
      return '' if pdf.empty?
      return pdf if pdf.include?('://')

      "/assets/pdf/#{pdf}"
    end

    def formatted_authors(site, entry)
      entry.authors.map do |author|
        author_text = "#{escape_html(author.last.to_s)}, #{author_initials(author.first.to_s)}"

        if self_author?(site, author)
          "<strong>#{author_text}</strong>"
        else
          author_text
        end
      end.join(', ')
    end

    def author_initials(first_name)
      initials = first_name
        .gsub(/[^\p{L}\s-]/, ' ')
        .split(/[\s-]+/)
        .reject(&:empty?)
        .map { |part| "#{part[0].upcase}." }
      initials.join(' ')
    end

    def self_author?(site, author)
      site_first_name = normalize_text(site.config['first_name'].to_s)
      site_last_name = normalize_text(site.config['last_name'].to_s)
      author_first_name = normalize_text(author.first.to_s)
      author_last_name = normalize_text(author.last.to_s)

      return false if site_first_name.empty? || site_last_name.empty?

      author_last_name == site_last_name && author_first_name.start_with?(site_first_name[0])
    end

    def normalize_text(value)
      value.downcase.gsub(/[^[:alpha:]]/, '')
    end

    def escape_html(value)
      CGI.escapeHTML(value)
    end
  end
end
