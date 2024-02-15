import { transactionSchema } from "../schema/schemas.js"

export async function validateBody(req,res,next){
    try {
        await transactionSchema.validateAsync(req.body,{abortEarly: false});
        next()
    } catch(err){
        res.status(404).send(generateErrorMessage(err))
    }
} 

function generateErrorMessage(error){
    const message = {message: "Body Invalid", description: ""}

    error.details.forEach(detail => {
        message.description += `${detail.message} `;
    });

    return message
}