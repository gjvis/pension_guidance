class OutputDocument
  attr_reader :appointment_summary, :variant

  delegate *SUPPLEMENTARY_OPTIONS, :appointment_type, :format_preference,
           to: :appointment_summary

  def initialize(appointment_summary, variant = 'generic_naked')
    @appointment_summary = appointment_summary
    @variant = variant
  end

  def html
    HTMLRenderer.new(self).render
  end

  def pdf
    Princely::Pdf.new.pdf_from_string(html)
  end

  def supplementary_pension_transfers
    false # placeholder until pension transfers is live
  end
end
