require 'humano'

class MembroFamilia < Humano
	
  attr_accessor :nome, :idade
  attr_reader   :created_at 


  #####################
  ## Instance Methods

  def initialize(nome_da_instancia="Desconhecido", sobrenome_da_familia=nil, options={})
    self.nome            = nome_da_instancia
    self.class.sobrenome = sobrenome_da_familia if sobrenome_da_familia
    self.idade           = options[:idade] if options[:idade]
    @created_at          = Time.now
  end

  def sobrenome 
    self.class.sobrenome
  end
 
  def nacionalidade
    "português"
  end

  def sobrenome=(v) 
    raise ArgumentError, "You should use the class method instead: MembroFamilia.apelido=\"#{v}\""
  end

  def nome_completo
    nome + apelido
  end

  def nome_mitico
    [@nome, "mitico"].join(" ").upcase
  end
    
  def nome_mitico!
    @@sobrenome = "mitico"
    [@nome, @@sobrenome].join(" ").upcase
  end

  def inspect
    "#{@nome} #{@@sobrenome} de #{@idade} é #{self.nacionalidade} criado em #{created_at}."
  end
  

  #####################
  ## Class Methods

  def self.apelido
    @@sobrenome or "Sem familia"
  end

  def self.sobrenome=(v)
    raise ArgumentError, "Argument should be String." unless v.class == String
    @@sobrenome = v
  end

end

