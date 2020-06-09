class Cadastro

include PageBase

def initialize
    @btn_iamnew = :xpath, '//android.widget.TextView[@text="I AM NEW"]'
    @btn_create  = :xpath, '//android.widget.TextView[@text="CREATE ACCOUNT"]'
    @btn_submit  = :xpath, '//android.widget.TextView[@text="SUBMIT CODE"]'
    @btn_1  = :xpath, '//android.widget.TextView[@text="1"]'
    @btn_SKIP  = :xpath, '//android.widget.TextView[@text="SKIP"]'
    @btn_remove  = :xpath, '//android.widget.TextView[@text=""]'
    @btn_2  = :xpath, '//android.widget.TextView[@text="2"]'
    @lbl_categories = :xpath, '//android.widget.TextView[@text="Categories"]'
    @txt_email  = :xpath,  '//android.widget.EditText[@text="E-mail"]'
    @txt_phone  = :xpath,  '//android.widget.EditText[@text="Phone number"]'
    @txt_password = :xpath, '//android.widget.EditText[@text="Password"]'
    @btn_OK = :id, 'android:id/button1'
end

    def verificarUsuarioSemConta
      find(@btn_iamnew)
   end

  def cadastrar
    find(@btn_iamnew).click
    find(@txt_email).send_keys("test@test.com")
    find(@txt_phone).send_keys("15999999999")
    find(@txt_password).send_keys("123456")
    find(@btn_create).click
  end

def verificacaoCodigo
for i in 0..4
 find(@btn_1).click
end
  find(@btn_submit).click
end

  def verificarHome
    find(@lbl_categories)
  end

  def pularCodigo
  find(@btn_SKIP).click
  find(@btn_OK).click
end

end
