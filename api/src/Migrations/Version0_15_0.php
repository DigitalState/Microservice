<?php

namespace App\Migrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Class Version0_15_0
 */
final class Version0_15_0 extends AbstractMigration
{
    /**
     * Up migration
     *
     * @param \Doctrine\DBAL\Schema\Schema $schema
     */
    public function up(Schema $schema)
    {
        $platform = $this->connection->getDatabasePlatform()->getName();

        switch ($platform) {
            case 'postgresql':
                break;

            default:
                $this->abortIf(true,'Migration cannot be executed on "'.$platform.'".');
                break;
        }
    }

    /**
     * Down migration
     *
     * @param \Doctrine\DBAL\Schema\Schema $schema
     */
    public function down(Schema $schema)
    {
        $platform = $this->connection->getDatabasePlatform()->getName();

        switch ($platform) {
            case 'postgresql':
                break;

            default:
                $this->abortIf(true,'Migration cannot be executed on "'.$platform.'".');
                break;
        }
    }
}
