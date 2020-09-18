module UnidadeActions
  def selecione_os_seguites_itens(lista_de_itens:)
    i = 0
    list = []
    lista_de_itens.rows.each {|rows| list.push(rows[0])}
    while(i < list.length) do
      element = lista_de_elementos_do_filtro_por_facilidade.select {|item| item.text.downcase.include? list[i].downcase}.first.click unless list[i].empty? 
      i = i + 1 
    end
  end
end