class MembroFamilia
  attr_accessor :nome, :idade

  def initialize(nome_da_instancia="Desconhecido", apelido_para_toda_familia=nil)
    self.nome          = nome_da_instancia
    self.class.apelido = apelido_para_toda_familia if apelido_para_toda_familia
  end

  #####################
  ## Instance Methods
  #####################

  def apelido 
    self.class.apelido
  end

  def apelido=(v) 
    raise "You should use the class method: MembroFamilia.apelido=\"#{v}\""
  end

  def nome_completo
    nome + apelido
  end


  #####################
  ## Class Methods
  #####################

  def self.apelido
    @@apelido or "Sem familia"
  end

  def self.apelido=(v)
    raise "Argument should be String." unless v.class == String
    @@apelido = v
  end

end

