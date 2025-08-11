DELIMITER $$

CREATE PROCEDURE sp_inserir_parceiro(
    IN p_tipo_parceiro VARCHAR(50),
    IN p_personalidade VARCHAR(10),
    IN p_razao_social VARCHAR(255),
    IN p_nome_fantasia VARCHAR(255),
    IN p_cpf_cnpj VARCHAR(18),
    IN p_segmento VARCHAR(100),
    IN p_categoria VARCHAR(100),
    IN p_cep VARCHAR(9),
    IN p_pais VARCHAR(50),
    IN p_uf VARCHAR(2),
    IN p_municipio VARCHAR(100),
    IN p_logradouro VARCHAR(255),
    IN p_numero VARCHAR(10),
    IN p_bairro VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_telefone VARCHAR(15),
    IN p_celular VARCHAR(15),
    IN p_complemento VARCHAR(100),
    IN p_observacao TEXT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    INSERT INTO parceiros (
        tipo_parceiro, personalidade, razao_social, nome_fantasia, cpf_cnpj, segmento, categoria,
        cep, pais, uf, municipio, logradouro, numero, bairro, email, telefone, celular, complemento, observacao
    ) VALUES (
        p_tipo_parceiro, p_personalidade, p_razao_social, p_nome_fantasia, p_cpf_cnpj, p_segmento, p_categoria,
        p_cep, p_pais, p_uf, p_municipio, p_logradouro, p_numero, p_bairro, p_email, p_telefone, p_celular, p_complemento, p_observacao
    );

    COMMIT;
END$$

DELIMITER ;