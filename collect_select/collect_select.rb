
class Array

  def my_collect
    if block_given?
      cont = []
      i = 0
      while i < self.length
        x = yield self[i]
        cont << x
        i += 1
      end
    end
    cont
  end

  def my_select
    if block_given?
      cont = []
      i = 0
      while i < self.length
        cond_boolean = yield self[i]
        cond_boolean ? cont << self[i] : nil
        i += 1
      end
    end
    cont
  end

end
