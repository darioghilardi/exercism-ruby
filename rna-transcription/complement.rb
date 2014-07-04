require 'pry'
class Complement
  def self.of_dna(sequence)
    sequence.chars.map { |nucleotide| translate(nucleotide, 'rna', 'dna') }.join
  end

  def self.of_rna(sequence)
    sequence.chars.map { |nucleotide| translate(nucleotide, 'dna', 'rna') }.join
  end

  private

  def self.translate(nucleotide, source, target)
    dictionary = { 'rna' => 'CGTA', 'dna' => 'GCAU' }

    translation_index = dictionary[source].chars.index(nucleotide)
    dictionary[target].chars[translation_index]
  end
end
