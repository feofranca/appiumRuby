class Tutorial
  
include PageBase

  def initialize
      @btn_skip = :xpath, '//android.widget.TextView[@text="SKIP"]'
      @btn_next  = :xpath, '//android.widget.TextView[@text="NEXT"]'
      @btn_back  = :xpath, '//android.widget.TextView[@text="BACK"]'
      @btn_done  = :xpath, '//android.widget.TextView[@text="DONE"]'
  end

  def valida_tutorial
    find(@btn_skip)
  end

  def ler_tutorial
    find(@btn_next).click
    find(@btn_back).click
    find(@btn_next).click
    find(@btn_next).click
    find(@btn_next).click
    find(@btn_done).click
  end

  def pular_tutorial
    find(@btn_skip).click
  end

end
