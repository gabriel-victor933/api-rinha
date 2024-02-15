import Joi from "joi"

export const transactionSchema = Joi.object({
    valor: Joi.number().integer().greater(0).required(),
    tipo: Joi.alternatives().try("c", "d").required(),
    descricao: Joi.string().required(),
})

export const IdParamSchema = Joi.number().integer().greater(0).required();