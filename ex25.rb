module Ex25

    # Separa as palavras
    def Ex25.break_words(stuff)
        words = stuff.split(' ')
        return words
    end

    # Organiza as palavras
    def Ex25.sort_words(words)
        return words.sort
    end

    # Tira a primeira palavra do array e exibe a mesma na tela.
    def Ex25.print_first_word(words)
        word = words.shift
        puts word
    end

    # Remove a última palavra do array e exibe a mesma na tela.
    def Ex25.print_last_word(words)
        word = words.pop
        puts word
    end

    # Ordena uma sentença de palavras
    def Ex25.sort_sentence(sentence)
        words = Ex25.break_words(sentence)
        return Ex25.sort_words(words)
    end

    # Exibe a primeira e última palavra da sentença
    def Ex25.print_first_and_last(sentence)
        words = Ex25.break_words(sentence)
        Ex25.print_first_word(words)
        Ex25.print_last_word(words)
    end

    # Ordena as palavras e depois exibe a primeira e última.
    def Ex25.print_first_and_last_sorted(sentence)
        words = Ex25.sort_sentence(sentence)
        Ex25.print_first_word(words)
        Ex25.print_last_word(words)
    end
    
end