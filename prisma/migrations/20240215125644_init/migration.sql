-- CreateEnum
CREATE TYPE "Type" AS ENUM ('C', 'D');

-- CreateTable
CREATE TABLE "clients" (
    "id" SERIAL NOT NULL,
    "limit" INTEGER NOT NULL,
    "saldoInicial" INTEGER NOT NULL,

    CONSTRAINT "clients_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "transaction" (
    "id" SERIAL NOT NULL,
    "valor" INTEGER NOT NULL,
    "tipo" "Type" NOT NULL,
    "clientId" INTEGER NOT NULL,
    "realizadaEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "transaction_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "transaction" ADD CONSTRAINT "transaction_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES "clients"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
