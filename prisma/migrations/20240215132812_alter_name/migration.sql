/*
  Warnings:

  - You are about to drop the column `limit` on the `clients` table. All the data in the column will be lost.
  - Added the required column `limite` to the `clients` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `tipo` on the `transaction` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "clients" DROP COLUMN "limit",
ADD COLUMN     "limite" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "transaction" DROP COLUMN "tipo",
ADD COLUMN     "tipo" TEXT NOT NULL;

-- DropEnum
DROP TYPE "Type";
