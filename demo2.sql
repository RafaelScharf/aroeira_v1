-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08-Out-2019 às 16:53
-- Versão do servidor: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `demo2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_adjustments`
--

CREATE TABLE IF NOT EXISTS `sma_adjustments` (
`id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_adjustments`
--

INSERT INTO `sma_adjustments` (`id`, `date`, `product_id`, `option_id`, `quantity`, `warehouse_id`, `note`, `created_by`, `updated_by`, `type`) VALUES
(1, '2019-10-07 03:00:00', 6, NULL, '5000.0000', 1, '&lt;p&gt;otario&lt;&sol;p&gt;', 2, NULL, 'addition'),
(2, '2019-10-08 12:40:00', 2, NULL, '2.0000', 1, '&lt;p&gt;1&lt;&sol;p&gt;', 2, NULL, 'subtraction'),
(3, '2019-10-08 12:41:00', 2, NULL, '2.0000', 1, '&lt;p&gt;&apos;&lt;&sol;p&gt;', 2, NULL, 'subtraction'),
(4, '2019-10-08 12:41:00', 2, NULL, '2.0000', 1, '&lt;p&gt;a&lt;&sol;p&gt;', 2, NULL, 'subtraction'),
(5, '2019-10-08 12:41:00', 2, NULL, '2.0000', 1, '&lt;p&gt;a&lt;&sol;p&gt;', 2, NULL, 'subtraction'),
(6, '2019-10-08 12:42:00', 2, NULL, '5.0000', 1, '&lt;p&gt;a&lt;&sol;p&gt;', 2, NULL, 'addition'),
(7, '2019-10-08 12:42:00', 2, NULL, '5.0000', 1, '&lt;p&gt;a&lt;&sol;p&gt;', 2, NULL, 'subtraction'),
(8, '2019-10-08 12:50:00', 8, NULL, '12.0000', 1, '&lt;p&gt;Produtos entregues atrasados&period;&lt;&sol;p&gt;', 2, NULL, 'addition'),
(9, '2019-10-08 12:51:00', 8, NULL, '60.0000', 1, '&lt;p&gt;Pois estao com defeitos&period;&lt;&sol;p&gt;', 2, NULL, 'subtraction'),
(10, '2019-10-08 12:53:00', 8, NULL, '2.0000', 1, '&lt;p&gt;qualquer coisa na nota&lt;&sol;p&gt;', 2, NULL, 'subtraction'),
(11, '2019-10-08 12:53:00', 8, NULL, '50.0000', 1, '&lt;p&gt;asdfas&lt;&sol;p&gt;', 2, NULL, 'addition');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_calendar`
--

CREATE TABLE IF NOT EXISTS `sma_calendar` (
`id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_captcha`
--

CREATE TABLE IF NOT EXISTS `sma_captcha` (
`captcha_id` bigint(13) unsigned NOT NULL,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_categories`
--

CREATE TABLE IF NOT EXISTS `sma_categories` (
`id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(55) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_categories`
--

INSERT INTO `sma_categories` (`id`, `code`, `name`, `image`) VALUES
(1, '01', 'Alimentaçao', NULL),
(2, '02', 'Bebidas', NULL),
(3, '03', 'Lanches', NULL),
(4, '04', 'Material de Construçao', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_combo_items`
--

CREATE TABLE IF NOT EXISTS `sma_combo_items` (
`id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `quantity` decimal(12,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_companies`
--

CREATE TABLE IF NOT EXISTS `sma_companies` (
`id` int(11) NOT NULL,
  `group_id` int(10) unsigned DEFAULT NULL,
  `group_name` varchar(20) NOT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer_group_name` varchar(100) DEFAULT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `vat_no` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `state` varchar(55) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL,
  `invoice_footer` text,
  `payment_term` int(11) DEFAULT '0',
  `logo` varchar(255) DEFAULT 'logo.png',
  `award_points` int(11) DEFAULT '0',
  `deposit_amount` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_companies`
--

INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`) VALUES
(1, 3, 'customer', 1, 'Geral', 'Cliente Teste', 'Caixa', '092.738.336-59', 'Rua Jose Nenem', 'Ipiranga do Piaui', 'Piaui', '64540000', 'Brasil', '0123456789', 'cliente@hotmail.com', 'MG16252123', '120', 'Casa', 'F', 'Centro', '', NULL, 0, 'logo.png', 0, NULL),
(4, NULL, 'biller', NULL, NULL, 'Vendedor 01', 'Vendedor', '', 'Rua Jose Nenem', 'Ipiranga do Piaui', 'Piaui', '64540000', 'Brasil', '899999999', 'admin@admin.com', '', '', '', '', '', '', '', 0, 'Sua-Logo-Aqui.png', 0, NULL),
(11, 3, 'customer', 1, 'Geral', 'Cliente Teste 3', 'empresa moderna', '', 'Rua Administração, 1307', 'Cascavel', 'PR', '85819-09', 'Brasil', '45998397009', 'abcrewr@gmail.com', '', 'Rua Administração, 1307', '', '', '', '', NULL, 0, 'logo.png', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_costing`
--

CREATE TABLE IF NOT EXISTS `sma_costing` (
`id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `purchase_net_unit_cost` decimal(25,4) DEFAULT NULL,
  `purchase_unit_cost` decimal(25,4) DEFAULT NULL,
  `sale_net_unit_price` decimal(25,4) NOT NULL,
  `sale_unit_price` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT NULL,
  `inventory` tinyint(1) DEFAULT '0',
  `overselling` tinyint(1) DEFAULT '0',
  `option_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_costing`
--

INSERT INTO `sma_costing` (`id`, `date`, `product_id`, `sale_item_id`, `sale_id`, `purchase_item_id`, `quantity`, `purchase_net_unit_cost`, `purchase_unit_cost`, `sale_net_unit_price`, `sale_unit_price`, `quantity_balance`, `inventory`, `overselling`, `option_id`) VALUES
(14, '2016-07-28', 1, 14, 8, 1, '1.0000', '11.5000', '11.5000', '16.9500', '16.9500', '9.0000', 1, 0, NULL),
(15, '2016-07-28', 1, 15, 8, 1, '5.0000', '11.5000', '11.5000', '16.9500', '16.9500', '5.0000', 1, 0, NULL),
(16, '2016-07-28', 1, 16, 8, 1, '1.0000', '11.5000', '11.5000', '16.9500', '16.9500', '9.0000', 1, 0, NULL),
(17, '2016-07-28', 1, 17, 8, 1, '1.0000', '11.5000', '11.5000', '16.9500', '16.9500', '9.0000', 1, 0, NULL),
(18, '2016-07-28', 1, 18, 8, 1, '1.0000', '11.5000', '11.5000', '16.9500', '16.9500', '9.0000', 1, 0, NULL),
(23, '2016-07-30', 1, 23, 10, 4, '1.0000', '11.5000', '11.5000', '16.9500', '16.9500', '995.0000', 1, 0, NULL),
(24, '2016-07-30', 1, 24, 10, 4, '1.0000', '11.5000', '11.5000', '16.9500', '16.9500', '995.0000', 1, 0, NULL),
(25, '2019-09-10', 2, 25, 11, 5, '1.0000', '2.0000', '2.0000', '3.0000', '3.0000', '9.0000', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_currencies`
--

CREATE TABLE IF NOT EXISTS `sma_currencies` (
`id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(55) NOT NULL,
  `rate` decimal(12,4) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_currencies`
--

INSERT INTO `sma_currencies` (`id`, `code`, `name`, `rate`, `auto_update`) VALUES
(1, 'BRL', 'Real', '1.0000', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_customer_groups`
--

CREATE TABLE IF NOT EXISTS `sma_customer_groups` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_customer_groups`
--

INSERT INTO `sma_customer_groups` (`id`, `name`, `percent`) VALUES
(1, 'Geral', 0),
(2, 'Revenda', -5),
(3, 'Distribuidor', -15),
(4, 'Cliente (+10)', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_date_format`
--

CREATE TABLE IF NOT EXISTS `sma_date_format` (
`id` int(11) NOT NULL,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_date_format`
--

INSERT INTO `sma_date_format` (`id`, `js`, `php`, `sql`) VALUES
(1, 'mm-dd-yyyy', 'm-d-Y', '%m-%d-%Y'),
(2, 'mm/dd/yyyy', 'm/d/Y', '%m/%d/%Y'),
(3, 'mm.dd.yyyy', 'm.d.Y', '%m.%d.%Y'),
(4, 'dd-mm-yyyy', 'd-m-Y', '%d-%m-%Y'),
(5, 'dd/mm/yyyy', 'd/m/Y', '%d/%m/%Y'),
(6, 'dd.mm.yyyy', 'd.m.Y', '%d.%m.%Y');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_deliveries`
--

CREATE TABLE IF NOT EXISTS `sma_deliveries` (
`id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) NOT NULL,
  `do_reference_no` varchar(50) NOT NULL,
  `sale_reference_no` varchar(50) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_deposits`
--

CREATE TABLE IF NOT EXISTS `sma_deposits` (
`id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` int(11) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `paid_by` varchar(50) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_expenses`
--

CREATE TABLE IF NOT EXISTS `sma_expenses` (
`id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference` varchar(50) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` varchar(55) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_expense_categories`
--

CREATE TABLE IF NOT EXISTS `sma_expense_categories` (
`id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_gift_cards`
--

CREATE TABLE IF NOT EXISTS `sma_gift_cards` (
`id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `card_no` varchar(20) NOT NULL,
  `value` decimal(25,4) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `balance` decimal(25,4) NOT NULL,
  `expiry` date DEFAULT NULL,
  `created_by` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_groups`
--

CREATE TABLE IF NOT EXISTS `sma_groups` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_groups`
--

INSERT INTO `sma_groups` (`id`, `name`, `description`) VALUES
(1, 'owner', 'Proprietário'),
(2, 'admin', 'Administração'),
(3, 'customer', 'Clientes'),
(4, 'supplier', 'Fornecedores'),
(5, 'vendas', 'Equipe de Vendas'),
(6, 'devs', 'grupo para usuarios dos devs');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_login_attempts`
--

CREATE TABLE IF NOT EXISTS `sma_login_attempts` (
`id` mediumint(8) unsigned NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_migrations`
--

CREATE TABLE IF NOT EXISTS `sma_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_migrations`
--

INSERT INTO `sma_migrations` (`version`) VALUES
(315);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_notifications`
--

CREATE TABLE IF NOT EXISTS `sma_notifications` (
`id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_date` datetime DEFAULT NULL,
  `till_date` datetime DEFAULT NULL,
  `scope` tinyint(1) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_order_ref`
--

CREATE TABLE IF NOT EXISTS `sma_order_ref` (
`ref_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `so` int(11) NOT NULL DEFAULT '1',
  `qu` int(11) NOT NULL DEFAULT '1',
  `po` int(11) NOT NULL DEFAULT '1',
  `to` int(11) NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL DEFAULT '1',
  `do` int(11) NOT NULL DEFAULT '1',
  `pay` int(11) NOT NULL DEFAULT '1',
  `re` int(11) NOT NULL DEFAULT '1',
  `rep` int(11) NOT NULL DEFAULT '1',
  `ex` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_order_ref`
--

INSERT INTO `sma_order_ref` (`ref_id`, `date`, `so`, `qu`, `po`, `to`, `pos`, `do`, `pay`, `re`, `rep`, `ex`) VALUES
(1, '2019-09-01', 1, 1, 2, 1, 10, 1, 9, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_payments`
--

CREATE TABLE IF NOT EXISTS `sma_payments` (
`id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `paid_by` varchar(20) NOT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(25) DEFAULT NULL,
  `cc_month` varchar(2) DEFAULT NULL,
  `cc_year` varchar(4) DEFAULT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `amount` decimal(25,4) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pos_paid` decimal(25,4) DEFAULT '0.0000',
  `pos_balance` decimal(25,4) DEFAULT '0.0000',
  `approval_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_payments`
--

INSERT INTO `sma_payments` (`id`, `date`, `sale_id`, `return_id`, `purchase_id`, `reference_no`, `transaction_id`, `paid_by`, `cheque_no`, `cc_no`, `cc_holder`, `cc_month`, `cc_year`, `cc_type`, `amount`, `currency`, `created_by`, `attachment`, `type`, `note`, `pos_paid`, `pos_balance`, `approval_code`) VALUES
(7, '2016-07-28 18:48:09', 8, NULL, NULL, 'IPAY/2016/07/0001', NULL, 'cash', '', '', '', '', '', '', '152.5500', NULL, 2, NULL, 'received', '', '500.0000', '347.4500', NULL),
(9, '2016-07-30 15:09:54', 10, NULL, NULL, 'IPAY/2016/07/0003', NULL, 'cash', '', '', '', '', '', '', '33.9000', NULL, 2, NULL, 'received', '', '50.0000', '16.1000', NULL),
(10, '2019-09-10 18:19:00', 11, NULL, NULL, 'IPAY/2019/09/0004', NULL, 'cash', '', '', '', '', '', '', '3.0000', NULL, 2, NULL, 'received', '', '5.0000', '2.0000', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_paypal`
--

CREATE TABLE IF NOT EXISTS `sma_paypal` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `paypal_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT '2.0000',
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT '3.9000',
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT '4.4000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_paypal`
--

INSERT INTO `sma_paypal` (`id`, `active`, `account_email`, `paypal_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 0, 'mypaypal@paypal.com', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_permissions`
--

CREATE TABLE IF NOT EXISTS `sma_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `products-index` tinyint(1) DEFAULT '0',
  `products-add` tinyint(1) DEFAULT '0',
  `products-edit` tinyint(1) DEFAULT '0',
  `products-delete` tinyint(1) DEFAULT '0',
  `products-cost` tinyint(1) DEFAULT '0',
  `products-price` tinyint(1) DEFAULT '0',
  `quotes-index` tinyint(1) DEFAULT '0',
  `quotes-add` tinyint(1) DEFAULT '0',
  `quotes-edit` tinyint(1) DEFAULT '0',
  `quotes-pdf` tinyint(1) DEFAULT '0',
  `quotes-email` tinyint(1) DEFAULT '0',
  `quotes-delete` tinyint(1) DEFAULT '0',
  `sales-index` tinyint(1) DEFAULT '0',
  `sales-add` tinyint(1) DEFAULT '0',
  `sales-edit` tinyint(1) DEFAULT '0',
  `sales-pdf` tinyint(1) DEFAULT '0',
  `sales-email` tinyint(1) DEFAULT '0',
  `sales-delete` tinyint(1) DEFAULT '0',
  `purchases-index` tinyint(1) DEFAULT '0',
  `purchases-add` tinyint(1) DEFAULT '0',
  `purchases-edit` tinyint(1) DEFAULT '0',
  `purchases-pdf` tinyint(1) DEFAULT '0',
  `purchases-email` tinyint(1) DEFAULT '0',
  `purchases-delete` tinyint(1) DEFAULT '0',
  `transfers-index` tinyint(1) DEFAULT '0',
  `transfers-add` tinyint(1) DEFAULT '0',
  `transfers-edit` tinyint(1) DEFAULT '0',
  `transfers-pdf` tinyint(1) DEFAULT '0',
  `transfers-email` tinyint(1) DEFAULT '0',
  `transfers-delete` tinyint(1) DEFAULT '0',
  `customers-index` tinyint(1) DEFAULT '0',
  `customers-add` tinyint(1) DEFAULT '0',
  `customers-edit` tinyint(1) DEFAULT '0',
  `customers-delete` tinyint(1) DEFAULT '0',
  `suppliers-index` tinyint(1) DEFAULT '0',
  `suppliers-add` tinyint(1) DEFAULT '0',
  `suppliers-edit` tinyint(1) DEFAULT '0',
  `suppliers-delete` tinyint(1) DEFAULT '0',
  `sales-deliveries` tinyint(1) DEFAULT '0',
  `sales-add_delivery` tinyint(1) DEFAULT '0',
  `sales-edit_delivery` tinyint(1) DEFAULT '0',
  `sales-delete_delivery` tinyint(1) DEFAULT '0',
  `sales-email_delivery` tinyint(1) DEFAULT '0',
  `sales-pdf_delivery` tinyint(1) DEFAULT '0',
  `sales-gift_cards` tinyint(1) DEFAULT '0',
  `sales-add_gift_card` tinyint(1) DEFAULT '0',
  `sales-edit_gift_card` tinyint(1) DEFAULT '0',
  `sales-delete_gift_card` tinyint(1) DEFAULT '0',
  `pos-index` tinyint(1) DEFAULT '0',
  `sales-return_sales` tinyint(1) DEFAULT '0',
  `reports-index` tinyint(1) DEFAULT '0',
  `reports-warehouse_stock` tinyint(1) DEFAULT '0',
  `reports-quantity_alerts` tinyint(1) DEFAULT '0',
  `reports-expiry_alerts` tinyint(1) DEFAULT '0',
  `reports-products` tinyint(1) DEFAULT '0',
  `reports-daily_sales` tinyint(1) DEFAULT '0',
  `reports-monthly_sales` tinyint(1) DEFAULT '0',
  `reports-sales` tinyint(1) DEFAULT '0',
  `reports-payments` tinyint(1) DEFAULT '0',
  `reports-purchases` tinyint(1) DEFAULT '0',
  `reports-profit_loss` tinyint(1) DEFAULT '0',
  `reports-customers` tinyint(1) DEFAULT '0',
  `reports-suppliers` tinyint(1) DEFAULT '0',
  `reports-staff` tinyint(1) DEFAULT '0',
  `reports-register` tinyint(1) DEFAULT '0',
  `sales-payments` tinyint(1) DEFAULT '0',
  `purchases-payments` tinyint(1) DEFAULT '0',
  `purchases-expenses` tinyint(1) DEFAULT '0',
  `products-adjustments` tinyint(1) NOT NULL DEFAULT '0',
  `bulk_actions` tinyint(1) NOT NULL DEFAULT '0',
  `customers-deposits` tinyint(1) NOT NULL DEFAULT '0',
  `customers-delete_deposit` tinyint(1) NOT NULL DEFAULT '0',
  `products-barcode` tinyint(1) NOT NULL DEFAULT '0',
  `purchases-return_purchases` tinyint(1) NOT NULL DEFAULT '0',
  `reports-expenses` tinyint(1) NOT NULL DEFAULT '0',
  `reports-daily_purchases` tinyint(1) DEFAULT '0',
  `reports-monthly_purchases` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_permissions`
--

INSERT INTO `sma_permissions` (`id`, `group_id`, `products-index`, `products-add`, `products-edit`, `products-delete`, `products-cost`, `products-price`, `quotes-index`, `quotes-add`, `quotes-edit`, `quotes-pdf`, `quotes-email`, `quotes-delete`, `sales-index`, `sales-add`, `sales-edit`, `sales-pdf`, `sales-email`, `sales-delete`, `purchases-index`, `purchases-add`, `purchases-edit`, `purchases-pdf`, `purchases-email`, `purchases-delete`, `transfers-index`, `transfers-add`, `transfers-edit`, `transfers-pdf`, `transfers-email`, `transfers-delete`, `customers-index`, `customers-add`, `customers-edit`, `customers-delete`, `suppliers-index`, `suppliers-add`, `suppliers-edit`, `suppliers-delete`, `sales-deliveries`, `sales-add_delivery`, `sales-edit_delivery`, `sales-delete_delivery`, `sales-email_delivery`, `sales-pdf_delivery`, `sales-gift_cards`, `sales-add_gift_card`, `sales-edit_gift_card`, `sales-delete_gift_card`, `pos-index`, `sales-return_sales`, `reports-index`, `reports-warehouse_stock`, `reports-quantity_alerts`, `reports-expiry_alerts`, `reports-products`, `reports-daily_sales`, `reports-monthly_sales`, `reports-sales`, `reports-payments`, `reports-purchases`, `reports-profit_loss`, `reports-customers`, `reports-suppliers`, `reports-staff`, `reports-register`, `sales-payments`, `purchases-payments`, `purchases-expenses`, `products-adjustments`, `bulk_actions`, `customers-deposits`, `customers-delete_deposit`, `products-barcode`, `purchases-return_purchases`, `reports-expenses`, `reports-daily_purchases`, `reports-monthly_purchases`) VALUES
(1, 5, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_pos_register`
--

CREATE TABLE IF NOT EXISTS `sma_pos_register` (
`id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25,4) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_cash` decimal(25,4) DEFAULT NULL,
  `total_cheques` int(11) DEFAULT NULL,
  `total_cc_slips` int(11) DEFAULT NULL,
  `total_cash_submitted` decimal(25,4) DEFAULT NULL,
  `total_cheques_submitted` int(11) DEFAULT NULL,
  `total_cc_slips_submitted` int(11) DEFAULT NULL,
  `note` text,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_pos_register`
--

INSERT INTO `sma_pos_register` (`id`, `date`, `user_id`, `cash_in_hand`, `status`, `total_cash`, `total_cheques`, `total_cc_slips`, `total_cash_submitted`, `total_cheques_submitted`, `total_cc_slips_submitted`, `note`, `closed_at`, `transfer_opened_bills`, `closed_by`) VALUES
(1, '2016-05-17 19:12:07', 1, '10.0000', 'close', '43.9000', 0, 0, '43.9000', 0, 0, '', '2016-05-19 04:50:47', NULL, 1),
(2, '2016-05-20 17:08:54', 1, '10.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2016-07-28 18:13:58', 2, '20.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_pos_settings`
--

CREATE TABLE IF NOT EXISTS `sma_pos_settings` (
  `pos_id` int(1) NOT NULL,
  `cat_limit` int(11) NOT NULL,
  `pro_limit` int(11) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_biller` int(11) NOT NULL,
  `display_time` varchar(3) NOT NULL DEFAULT 'yes',
  `cf_title1` varchar(255) DEFAULT NULL,
  `cf_title2` varchar(255) DEFAULT NULL,
  `cf_value1` varchar(255) DEFAULT NULL,
  `cf_value2` varchar(255) DEFAULT NULL,
  `receipt_printer` varchar(55) DEFAULT NULL,
  `cash_drawer_codes` varchar(55) DEFAULT NULL,
  `focus_add_item` varchar(55) DEFAULT NULL,
  `add_manual_product` varchar(55) DEFAULT NULL,
  `customer_selection` varchar(55) DEFAULT NULL,
  `add_customer` varchar(55) DEFAULT NULL,
  `toggle_category_slider` varchar(55) DEFAULT NULL,
  `toggle_subcategory_slider` varchar(55) DEFAULT NULL,
  `cancel_sale` varchar(55) DEFAULT NULL,
  `suspend_sale` varchar(55) DEFAULT NULL,
  `print_items_list` varchar(55) DEFAULT NULL,
  `finalize_sale` varchar(55) DEFAULT NULL,
  `today_sale` varchar(55) DEFAULT NULL,
  `open_hold_bills` varchar(55) DEFAULT NULL,
  `close_register` varchar(55) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `pos_printers` varchar(255) DEFAULT NULL,
  `java_applet` tinyint(1) NOT NULL,
  `product_button_color` varchar(20) NOT NULL DEFAULT 'default',
  `tooltips` tinyint(1) DEFAULT '1',
  `paypal_pro` tinyint(1) DEFAULT '0',
  `stripe` tinyint(1) DEFAULT '0',
  `rounding` tinyint(1) DEFAULT '0',
  `char_per_line` tinyint(4) DEFAULT '42',
  `pin_code` varchar(20) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.0.2.10',
  `after_sale_page` tinyint(1) DEFAULT '0',
  `item_order` tinyint(1) DEFAULT '0',
  `authorize` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_pos_settings`
--

INSERT INTO `sma_pos_settings` (`pos_id`, `cat_limit`, `pro_limit`, `default_category`, `default_customer`, `default_biller`, `display_time`, `cf_title1`, `cf_title2`, `cf_value1`, `cf_value2`, `receipt_printer`, `cash_drawer_codes`, `focus_add_item`, `add_manual_product`, `customer_selection`, `add_customer`, `toggle_category_slider`, `toggle_subcategory_slider`, `cancel_sale`, `suspend_sale`, `print_items_list`, `finalize_sale`, `today_sale`, `open_hold_bills`, `close_register`, `keyboard`, `pos_printers`, `java_applet`, `product_button_color`, `tooltips`, `paypal_pro`, `stripe`, `rounding`, `char_per_line`, `pin_code`, `purchase_code`, `envato_username`, `version`, `after_sale_page`, `item_order`, `authorize`) VALUES
(1, 22, 50, 1, 1, 4, '1', 'Insc. Est', 'Insc. Mun', '123456789', '987654321', 'BIXOLON SRP-350II', 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 0, 'BIXOLON SRP-350II, BIXOLON SRP-350II', 0, 'default', 1, 0, 0, 0, 42, '1111', 'purchase_code', 'envato_username', '3.0.2.10', 1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_products`
--

CREATE TABLE IF NOT EXISTS `sma_products` (
`id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` char(255) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) NOT NULL,
  `alert_quantity` decimal(15,4) DEFAULT '20.0000',
  `image` varchar(255) DEFAULT 'no_image.png',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `cf1` varchar(255) DEFAULT NULL,
  `cf2` varchar(255) DEFAULT NULL,
  `cf3` varchar(255) DEFAULT NULL,
  `cf4` varchar(255) DEFAULT NULL,
  `cf5` varchar(255) DEFAULT NULL,
  `cf6` varchar(255) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `tax_rate` int(11) DEFAULT NULL,
  `track_quantity` tinyint(1) DEFAULT '1',
  `details` varchar(1000) DEFAULT NULL,
  `warehouse` int(11) DEFAULT NULL,
  `barcode_symbology` varchar(55) NOT NULL DEFAULT 'code128',
  `file` varchar(100) DEFAULT NULL,
  `product_details` text,
  `tax_method` tinyint(1) DEFAULT '0',
  `type` varchar(55) NOT NULL DEFAULT 'standard',
  `supplier1` int(11) DEFAULT NULL,
  `supplier1price` decimal(25,4) DEFAULT NULL,
  `supplier2` int(11) DEFAULT NULL,
  `supplier2price` decimal(25,4) DEFAULT NULL,
  `supplier3` int(11) DEFAULT NULL,
  `supplier3price` decimal(25,4) DEFAULT NULL,
  `supplier4` int(11) DEFAULT NULL,
  `supplier4price` decimal(25,4) DEFAULT NULL,
  `supplier5` int(11) DEFAULT NULL,
  `supplier5price` decimal(25,4) DEFAULT NULL,
  `promotion` tinyint(1) DEFAULT '0',
  `promo_price` decimal(25,4) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `supplier1_part_no` varchar(50) DEFAULT NULL,
  `supplier2_part_no` varchar(50) DEFAULT NULL,
  `supplier3_part_no` varchar(50) DEFAULT NULL,
  `supplier4_part_no` varchar(50) DEFAULT NULL,
  `supplier5_part_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_product_photos`
--

CREATE TABLE IF NOT EXISTS `sma_product_photos` (
`id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_product_variants`
--

CREATE TABLE IF NOT EXISTS `sma_product_variants` (
`id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_purchases`
--

CREATE TABLE IF NOT EXISTS `sma_purchases` (
`id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier` varchar(55) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `product_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT NULL,
  `product_tax` decimal(25,4) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `paid` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `status` varchar(55) DEFAULT '',
  `payment_status` varchar(20) DEFAULT 'pending',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `return_purchase_ref` varchar(55) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `return_purchase_total` decimal(25,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_purchase_items`
--

CREATE TABLE IF NOT EXISTS `sma_purchase_items` (
`id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT '0.0000',
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `quantity_received` decimal(15,4) DEFAULT NULL,
  `supplier_part_no` varchar(50) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_purchase_items`
--

INSERT INTO `sma_purchase_items` (`id`, `purchase_id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `option_id`, `net_unit_cost`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `expiry`, `subtotal`, `quantity_balance`, `date`, `status`, `unit_cost`, `real_unit_cost`, `quantity_received`, `supplier_part_no`, `purchase_item_id`) VALUES
(1, NULL, NULL, 1, '07327550', 'Produto Teste', NULL, '11.5000', '10.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '115.0000', '-1.0000', '2016-05-18', 'received', '11.5000', '11.5000', NULL, NULL, NULL),
(2, NULL, NULL, 1, '07327550', 'Produto Teste', NULL, '11.5000', '20.0000', 2, '0.0000', 1, '0.0000', NULL, NULL, NULL, '230.0000', '20.0000', '2016-05-18', 'received', '11.5000', '11.5000', NULL, NULL, NULL),
(5, NULL, NULL, 2, '67285372', 'Produto teste 2', NULL, '2.0000', '10.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '20.0000', '1.0000', '2019-09-10', 'received', '2.0000', '2.0000', NULL, NULL, NULL),
(6, NULL, NULL, 3, '39872121', 'Comida por KG', NULL, '1.0000', '1000.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '1000.0000', '1000.0000', '2019-09-13', 'received', '1.0000', '1.0000', NULL, NULL, NULL),
(7, NULL, NULL, 6, '321', 'teste', NULL, '0.0000', '0.0000', 1, '0.0000', 0, '', NULL, NULL, NULL, '0.0000', '5000.0000', '2019-10-07', 'received', '0.0000', NULL, NULL, NULL, NULL),
(8, NULL, NULL, 8, '654852', 'Produto Tutorial', NULL, '1.0000', '50.0000', 1, '0.0000', 1, '0.0000', NULL, NULL, NULL, '50.0000', '50.0000', '2019-10-08', 'received', '1.0000', '1.0000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_quotes`
--

CREATE TABLE IF NOT EXISTS `sma_quotes` (
`id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_quote_items`
--

CREATE TABLE IF NOT EXISTS `sma_quote_items` (
`id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_return_items`
--

CREATE TABLE IF NOT EXISTS `sma_return_items` (
`id` int(11) NOT NULL,
  `sale_id` int(11) unsigned NOT NULL,
  `return_id` int(11) unsigned NOT NULL,
  `sale_item_id` int(11) DEFAULT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_return_purchases`
--

CREATE TABLE IF NOT EXISTS `sma_return_purchases` (
`id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `supplier` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT '0.0000',
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `surcharge` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_return_purchase_items`
--

CREATE TABLE IF NOT EXISTS `sma_return_purchase_items` (
`id` int(11) NOT NULL,
  `purchase_id` int(11) unsigned NOT NULL,
  `return_id` int(11) unsigned NOT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_return_sales`
--

CREATE TABLE IF NOT EXISTS `sma_return_sales` (
`id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT '0.0000',
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `surcharge` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_sales`
--

CREATE TABLE IF NOT EXISTS `sma_sales` (
`id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT '0.0000',
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `sale_status` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` tinyint(4) DEFAULT NULL,
  `pos` tinyint(1) NOT NULL DEFAULT '0',
  `paid` decimal(25,4) DEFAULT '0.0000',
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL,
  `return_sale_ref` varchar(55) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `return_sale_total` decimal(25,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_sales`
--

INSERT INTO `sma_sales` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `biller_id`, `biller`, `warehouse_id`, `note`, `staff_note`, `total`, `product_discount`, `order_discount_id`, `total_discount`, `order_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `sale_status`, `payment_status`, `payment_term`, `due_date`, `created_by`, `updated_by`, `updated_at`, `total_items`, `pos`, `paid`, `return_id`, `surcharge`, `attachment`, `return_sale_ref`, `sale_id`, `return_sale_total`) VALUES
(8, '2016-07-28 18:48:09', 'VENDA/POS/2016/07/0001', 1, 'Jr Next', 4, 'Jr Next', 1, '', '', '152.5500', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '152.5500', 'completed', 'paid', 0, NULL, 2, NULL, NULL, 9, 1, '152.5500', NULL, '0.0000', NULL, NULL, NULL, '0.0000'),
(10, '2016-07-30 15:09:54', 'VENDA/POS/2016/07/0003', 1, 'Jr Next', 4, 'Jr Next', 1, '', '', '33.9000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '33.9000', 'completed', 'paid', 0, NULL, 2, NULL, NULL, 2, 1, '33.9000', NULL, '0.0000', NULL, NULL, NULL, '0.0000'),
(11, '2019-09-10 18:19:00', 'VENDA/POS/2019/09/0004', 1, 'Jr Next', 4, 'Jr Next', 1, '', '', '3.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', 1, '0.0000', '0.0000', '0.0000', '3.0000', 'completed', 'paid', 0, NULL, 2, NULL, NULL, 1, 1, '3.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_sale_items`
--

CREATE TABLE IF NOT EXISTS `sma_sale_items` (
`id` int(11) NOT NULL,
  `sale_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `sale_item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_sale_items`
--

INSERT INTO `sma_sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `sale_item_id`) VALUES
(14, 8, 1, '07327550', 'Produto Teste', 'standard', 0, '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', '16.9500', NULL),
(15, 8, 1, '07327550', 'Produto Teste', 'standard', 0, '16.9500', '16.9500', '5.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '84.7500', '', '16.9500', NULL),
(16, 8, 1, '07327550', 'Produto Teste', 'standard', 0, '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', '16.9500', NULL),
(17, 8, 1, '07327550', 'Produto Teste', 'standard', 0, '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', '16.9500', NULL),
(18, 8, 1, '07327550', 'Produto Teste', 'standard', 0, '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', '16.9500', NULL),
(23, 10, 1, '07327550', 'Produto Teste', 'standard', 0, '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', '16.9500', NULL),
(24, 10, 1, '07327550', 'Produto Teste', 'standard', 0, '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', '16.9500', NULL),
(25, 11, 2, '67285372', 'Produto teste 2', 'standard', 0, '3.0000', '3.0000', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '3.0000', '', '3.0000', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_sessions`
--

CREATE TABLE IF NOT EXISTS `sma_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_sessions`
--

INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('02790cfaf349bca24c338750be60d811ce284ea9', '::1', 1569263804, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393236333636343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353638393834343136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393236333830343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('03433a1e1b53ac7c8bb385d4c385821de916031b', '::1', 1570020864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303032303537333b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303032303836333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('04dd8e85d03eb442fa0b6a2c44c8438b451fbae9', '::1', 1569432698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393433323639383b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639333530323435223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393433323639383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('068199fe8013d25c657c898ab9542c36dbdac6e1', '::1', 1570470181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303437303138303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436383832313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('084918a948381993a6dbf1888d6c96660ff6eb49', '::1', 1570539183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303533383838333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303533383338343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e726f38426b5878616a524474704c6531677330223b6572726f727c733a35333a2241205174642e206e6f20446570c3b37369746f20c3a9206d656e6f7220646f207175652061205174642e20636f6d20417661726961223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('08d5404a5c04e23a894e4341b583358df7f30e31', '::1', 1569351858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393335313835383b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639323633363637223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393335313136383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('09bbb6dd0300ff4c42bd57cc0532fc8ce1497c15', '::1', 1569518092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393531383039323b7265717565737465645f706167657c733a303a22223b),
('0b6f019c684ced17bc6c0994d2065d9748ef624c', '::1', 1570211738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231313733383b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('0c060719140fa04a06eafd173248090c7575872d', '::1', 1569872737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393837323733373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639383331313634223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393837323733373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('0c6de11976980a2fc9af12d55fbb4a810cbc7b65', '::1', 1570016219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303031353937343b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303031363231393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('0d4ffb9af7a9fedb8f4ed855e38a7cf55adf1f77', '::1', 1569831157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393833313135373b7265717565737465645f706167657c733a303a22223b),
('0e74c6208c590b6a2e7eae9164c2f557053f882d', '::1', 1570542824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303534323730343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303534323832343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224c425443304b6b4e55485a765774537549656d33223b),
('0fffb482455a180b94dcbc8a1b934cbb24fb1eab', '::1', 1570212039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231323033393b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('1050bb1610ec64d2ba2138d90f60e3cc02c54d2e', '::1', 1570130240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303133303131313b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132363637323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a22624b69375a39467a447636675941644568616f49223b),
('114ded33eab6dd9253b54c4bf81ab6a359fab936', '::1', 1570134581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303133343339383b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303133343538313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e44757661304c356634495073796a654b725a37223b),
('14fbb2f102f8a6d25f73cd8e7575694ef5d44cfb', '::1', 1570219045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231393034353b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303231353536393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a225471344b6b396374486236666942656152774349223b),
('1701f76038efb1fe23f854a5797c1ebce9d3f275', '::1', 1570205706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230353730363b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('19ae1458b1f49f6fc59c03f4a14131b663ce0a55', '::1', 1569433906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393433333930343b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639333530323435223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393433333930363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('1a961ad99079c5bac7dd5e277828223901f6106d', '::1', 1568984731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383938343733313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353638393130383339223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('1aa32c4bedbd3905b08117c7fdb76578bc0d2268', '::1', 1570042226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303034323232363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303135363433223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303034323232363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a226737413539706e56734f5157723846594e4b6d68223b),
('1b1b7789a06447a2a847c73faabc203658c1fb3f', '::1', 1569597320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393539373033363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393539373332303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('1be341129dd0e48e1c98b846e52f374c5aff9162', '::1', 1570043724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303034333732343b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303135363433223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303034333732343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a226737413539706e56734f5157723846594e4b6d68223b),
('1c23de0fbe10b8d3769fc47b218f1babf7e68c75', '::1', 1570017444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303031373331303b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303031373434343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('1c5c64fd90398a0191adf9eb67c64d8778372e73', '::1', 1570018390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303031383136393b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303031383339303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('1e07b838ba84138e516dae17fdea0494018e2f4b', '::1', 1570106133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130363033313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303130363133333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('1ef228f56cea3a21987544903f625e5a4f473a90', '::1', 1570019549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303031393235333b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303031393534393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('1f7f45cca14d19aba1a07d71763dc10634a951a9', '::1', 1570220629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303232303335363b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303232303337363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a22424975486d5553454e3462676f365652434a6357223b),
('20100bf6f26b87926f3963bda981000ac36573ab', '::1', 1570113921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303131333837363b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303131333932313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('206b33c3d0a81841237844f6d224f4c834cf5894', '::1', 1569599401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393539393037323b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393539393430313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('2077f3f0002a088e584283194a7d7f0bc6f0b020', '::1', 1570471758, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303437313339303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303437313735383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('21d6e5aed89fa8f1f6c0cb162137a8d4b20135f0', '::1', 1570107307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130373033353b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303130373330373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('22ce7df5d524d7b4900e847a89603afffcc58aa8', '::1', 1569831190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393833313135373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353937303430223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393833313139303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('241982accd73003d4b6b8a792e0ddab8a26c11cb', '::1', 1570124301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132343231373b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132343231383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224654486f304f6e474a6a5057646663784e395242223b),
('2b36a2b71ddd9edb969e23ed8a9b64dddc582656', '::1', 1570539406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303533393138343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303533383338343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a22354658485942664d6c474f444c69306d37644351223b),
('2b8013f752c92fe980a79174e250568b6bf5df31', '::1', 1569832880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393833323633333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353937303430223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393833323838303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('2c3f15f15dad912dc5c8f8830e249f723180e783', '::1', 1569950761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393935303634353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393430353130223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393935303736313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('2c9c1a4c992f3750ca9f9edd5ad67e90f7d3a017', '::1', 1570019803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303031393631313b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303031393830333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('2f1dbb1854c9e902051338d9a8938bdb5ef081b1', '::1', 1570538562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303533383338343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303533383338343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e726f38426b5878616a524474704c6531677330223b),
('30c246e84567899689b10a2dacfe3b4e870b4d53', '::1', 1570466091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303436363035323b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436343735323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('31f0e0050de37ba0deb5b6ff4ca10d3cfe753063', '::1', 1569350383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393335303232393b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639323633363637223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('32ed8321eb60bda939374952d691a0bc90e99c3e', '::1', 1569954042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393935333836303b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393430353130223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393935343034323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('333506f0dcc6ecf4b7c1e118be640704d6b841b1', '::1', 1570040677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303034303532373b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303135363433223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303034303637373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a226737413539706e56734f5157723846594e4b6d68223b),
('33e3af96e3a0a2c8d06183853c1695232c9ee54d', '::1', 1570025183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303032343838353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303032353138333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('34e03b413fdef5845361d9a56ef0dcd5d20fdc7a', '::1', 1570022886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303032323835363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303032323838363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('3643ba3050d0241fe686dc23b1dd5f13c9079029', '::1', 1570104816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130343831363b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303130343831363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('3a3dae673d27dfca0c2fad6ecd4ef2d9a190316d', '::1', 1570469872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303436393837323b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436383832313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b);
INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3e80472286667b49b132126a7e58ec754354cfb3', '::1', 1570468836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303436383832313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436383832313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('3f6cabb9d136d52bdfa67ec1f68c2c6ce66bfab4', '::1', 1570127270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132373236393b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132363637323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a22303861703966464a45336342554765496d48565a223b),
('4000326bd8c3eb26575c55bad6c85cdf922636d9', '::1', 1570207513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230373531333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('40aafff6269f6f8da5ef49beab64b2c00a7cf7b9', '::1', 1570196867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303139363836373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('40c52524d33f1a51d6dba611a07e4f73300c61d3', '::1', 1569603091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393630323833383b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393630333039313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('42ddc708aaaf84499d99c1cbb1222e09e6bbb85d', '::1', 1570218786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231383535373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303231353536393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a226252595a7044677a4b7556333655346849633278223b),
('436db153f55b1f65f43f14eced8bff1f67d44e35', '::1', 1570113863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303131333537303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303131333836323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('43ed7a515756fa9bd7d5091467b902ac53fb71f5', '::1', 1570197390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303139373339303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('43fbf291e5af6e22cfd6483d6aad8191b8e1c68c', '::1', 1569833128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393833333132353b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353937303430223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393833333132353b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('44d124677af6a8319cd02069c96cc76351925cc3', '::1', 1570134869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303133343734363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303133343836393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e44757661304c356634495073796a654b725a37223b),
('46f703140332f97c1d487f607ed661dfea4b0053', '::1', 1570215619, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231353536383b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303231353536393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a2232724f6568614b4779564e5a34757345636a4967223b),
('47d0c5af5f10aa60d29733b2c63e565d6a5b63be', '::1', 1570210011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231303031313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('48319bd7bf438c26f2f93b5925a894d3a1a34700', '::1', 1569599738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393539393733383b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393539393433343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('495acc21cb51d9743c1be02889d8cdfe4b3d9a73', '::1', 1570472327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303437323238323b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303437323332373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('497861ac915a1b7fb0c04b637292e4b904c1b2ca', '::1', 1570107520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130373337323b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303130373532303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('4a2935c476b92459b931d4c04e33ce428317cd9a', '::1', 1570206383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230363338333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('4a2abaadba9eeaf7be254bbc9f8dd8348a8b7890', '::1', 1570208220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230383232303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('4b3c3e42d56aca088345d59101606186225cd8eb', '::1', 1570125123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132343835313b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132353132323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a2273695a7763466f7444386b357532576e71394e64223b),
('4ca569ee54eee649e12832fccf882d7650f38644', '::1', 1570219997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231393732343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303231393938363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a2257494648476243766b343266786c684f6e65384b223b),
('4cfad48ae512917c9dc2a2799c313f25c574ec00', '::1', 1569419996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393431393930373b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639333530323435223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393431393939343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('4d1f4683e45e1d22e5c7b33453bf80323f73ea53', '::1', 1569432698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393433323639373b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639333530323435223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393433323639383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('4e4680bcd256995741cc270b7a27a5174b30475f', '::1', 1570470581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303437303538313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436383832313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('4f9dc888e898534faea5aac7c5d2161fd6f2ce0c', '::1', 1570540904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303534303637333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303534303433363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a2263765958657a78484f516c71704c723244527743223b),
('4fc7011d01ed31f83ece47502a4c5049983f7ef6', '::1', 1569951605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393935313630353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393430353130223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393935313630353b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('505b43b65e861d7473b7929c8c333431152a5fe7', '::1', 1570196231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303139363233313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('50c28417a4f4ca3d7459155ab270a3e5ffd1a52d', '::1', 1570219700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231393431373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303231393730303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a22536f73383969525758456a4f6b4c6c3242443348223b),
('529c6813ab87e94e1db87095a44118a833f83d07', '::1', 1570025436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303032353231363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303032353433363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('56129da330c32a0e009466ccc9250235299d9877', '::1', 1570108520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130383531383b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303130383532303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('561ddfd112a8d91921fa3094ff4f4affbc6ed659', '::1', 1570113206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303131323931393b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303131333230353b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('5673fa6fa5f609d03a4f8b533ca06130fadf3b8a', '::1', 1570044349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303034343334363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303135363433223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303034343334393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a226737413539706e56734f5157723846594e4b6d68223b),
('57efe4c3236518e9f9bfd2b69118f5eeb3b4f618', '::1', 1569423229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393432333232393b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639333530323435223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393432303437353b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('5b3b7e585b2816e843d53fe9d7d3f74e12729efb', '::1', 1570045597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303034353539373b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303135363433223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303034353130373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a226737413539706e56734f5157723846594e4b6d68223b),
('5b77f1d87f1439d159973bbfb7283879e7def1c8', '::1', 1570106993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130363639343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303130363939333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('5ba87fa5743c3c0515eefd770164134851906859', '::1', 1570016385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303031363237353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303031363338353b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('5c5fb09a83213c0cb32c7904aeba8bd641338502', '::1', 1570045236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303034353233363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303135363433223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303034353130373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a226737413539706e56734f5157723846594e4b6d68223b),
('5db2282fdc64dcd08fe3be83316ec4fa3b5d9804', '::1', 1569597841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393539373630303b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393539373834313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('5f7ba13d81bb6e79768a9012e44aa3f89b0317a7', '::1', 1570108445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130383230323b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303130383434353b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('60c77467571aa7966d29e85dac84ab59e8d3b4ad', '::1', 1570537870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303533373635343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303533373836343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e726f38426b5878616a524474704c6531677330223b),
('613c1e27f65c3cbf310da83e97af6b019499ad61', '::1', 1570123887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132333335333b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132333838373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('624140f3361eae20e62317168e438646f45fad1e', '::1', 1570204136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230343133363b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('65a15513a914cd8a4e6ff3ca30231dea685bb999', '::1', 1570039691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303033393339333b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303135363433223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303033393036363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224f533762637844543646517a34745243574e4577223b),
('65b338f4ed7b1eceaab0c09a2289d39c09f897fe', '::1', 1570028378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303032383231323b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303032383337383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('6689b58dcefa153577545d68430e1bc704feaa0f', '::1', 1570479261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303437393235353b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303437393236313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('67962d5dbf0580bf5d1348c8dc54be9b6bbb58b6', '::1', 1570542375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303534323038363b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303534303433363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a2239354e4254784657456e75654d5862696c4a3256223b),
('6a432a52d97151a379d42f6ccee7912dc4e97bc5', '::1', 1570132978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303133323937383b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303133323233393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e44757661304c356634495073796a654b725a37223b);
INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('6c0e971032aafb19cf4d7bed8b49944d7d7df006', '::1', 1570122642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132323634323b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132323331363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('6c6d40790033497f81c02e64261ce63cf9f0d552', '::1', 1570108084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130373739323b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303130383038343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('6cdea38544f49d976fa756f2a68c2b26e5ddcb93', '::1', 1570211375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231313337353b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('7002a361d660d6babf88e489cff57203d35aeddf', '::1', 1570209550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230393535303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('70e39eec8cf1729df1930e330ad432e5b149bdab', '::1', 1570465069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303436343939353b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436343735323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('71e0cd849e10739491247146c73e614a50f3acf5', '::1', 1568984422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383938343431323b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353638393130383339223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('722219710cfb3deccccf664cb003f7f57d549728', '::1', 1570469563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303436393536333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436383832313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('73be8a751428602723f0e4ba1f619e73cc0d8268', '::1', 1569600307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393630303330373b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393630303330373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('74dc8fad10a52a4c005367ab1e4bccb92126d106', '::1', 1570022561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303032323439363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303032323536313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('75ec31db3aa7a88235dd5ecf51e7027b09dbfd9a', '::1', 1570207898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230373839383b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('7776d867f64002dedf11803277d001a8b3d719bd', '::1', 1570126672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132363635353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132363637323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a225a66683443454d564b417833616c51486e554a62223b),
('779e07c0ac4b438b785858714dfad485619b3ee8', '::1', 1570110631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303131303338303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303131303633313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('77ae84fbe6411ecc5771ea0b383bd8b186be2985', '::1', 1570043024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303034333032343b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303135363433223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303034333032343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a226737413539706e56734f5157723846594e4b6d68223b),
('7a7ddd4494505874765793ff16ce376e0370b818', '::1', 1569940524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393934303434353b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393238363233223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393934303532333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('7a9ed5d4c24db437fca495ad6e8019945a28a3de', '::1', 1570210379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231303337393b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('7b83baf6c787abe2cb5ff9fb7d7018060451393c', '::1', 1570539634, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303533393536333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303533383338343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a22424a55766c685362496b473361587a443465364f223b),
('7e336d5c1f9095ba5ae1ea9032d603c4262465f3', '::1', 1570195800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303139353732353b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('7fb5687bdeab92db4a539ef593d884f6fbb1e13f', '::1', 1570206851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230363835313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('80eb346745402b5f357d346cc053ed9550cb19df', '::1', 1570213169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231333136333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303231333136393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('80fdafd289d6f273702b043b1916eab221c318df', '::1', 1570209194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230393139343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('81d95925b568722a2249bad02fcfe0bd66b3f1e7', '::1', 1569519954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393531393835373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639343139393934223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393531393935343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('82cc1cb1ed002255677d0c0a965a45ffb84c3575', '::1', 1570546121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303534363030303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303534363132303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224f6c6f4534537936565237594b4e4d4c677a6d68223b),
('842e60c9afcfaed97724dd20d7a613f577a4edbe', '::1', 1569517512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393531373531323b7265717565737465645f706167657c733a333a22706f73223b),
('87fac0fe75e828aad659a3df1f9fb56375d154a0', '::1', 1570110219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130393936393b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303131303231393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('88e1ca79b1962b07980745f62cd333b3d0003240', '::1', 1569426084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393432363032323b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639333530323435223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393432363038343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('896f57f3cb961a01d3c62ccfa7a4d302d4c0f318', '::1', 1570134141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303133333837373b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303133343134313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e44757661304c356634495073796a654b725a37223b),
('8ba11d64f6a5617c23972351a1e72af47033dfc5', '::1', 1570540437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303534303232333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303534303433363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a22706746424e734954756847634c6b5a3937344364223b),
('8c7c4d6de5004ef53ed5c7a179728bd75195212a', '::1', 1569601432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393630313430393b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393630313433323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('8d1ed502c40d393275d3236cd48911a117a5b79a', '::1', 1570122316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132323238363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132323331363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('8d91c874b38f39183510efab0cc8008febcc8939', '::1', 1570545718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303534353632333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303534353731383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224f6c6f4534537936565237594b4e4d4c677a6d68223b),
('9116f035f361d1fcf52b2ba582b656545e0902b0', '::1', 1570469217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303436393231373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436383832313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('912620f5e956b5097e281d628fd1a8f0f2cb2fc1', '::1', 1570019202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303031383931383b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303031393230323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('91a5cdbe1ae4eb607739aea38ef409255332e723', '::1', 1570206061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230363036313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('9243f4abd0c6318a47446a78d4e12275be7a169e', '::1', 1570022150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303032303938363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303032323135303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('92862b256361053d662ffb94807b1df676fa7a73', '::1', 1569351490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393335313439303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639323633363637223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393335313136383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('93c17481d20221ef92ddd1408e723cd6b569f1a2', '::1', 1569956440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393935363137333b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393430353130223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393935363434303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('9573429acd8a323629d2f67a654e73f65f025232', '::1', 1569351168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393335313136373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639323633363637223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393335313136383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('9606d000890066ab1b5113f1fdd0797690f43e6e', '::1', 1569426007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393432353731373b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639333530323435223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393432363030373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('9759ed505c6cbb7322f89b5b59dcd3a1c129a71d', '::1', 1569601313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393630313036363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393630313331333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('9921b06e54ebb33afc7b852723e31a95547196e6', '::1', 1569598746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393539383436333b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393539383734353b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('9a8a838b46039db388269e7b464e0b1163c16c70', '::1', 1570016880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303031363738333b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303031363838303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('9b6111ae1250b4f4e5bb66a4c9ec254c3d8c9b3c', '::1', 1570124176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132333838393b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132343137363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('9b64a3d02d6a270cdfa7d3ee6687e3aca8864e3e', '::1', 1570221258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303232313230373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303232303337363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a22424975486d5553454e3462676f365652434a6357223b),
('9c41e12ea76e0d6f1ab244fae339ce7eb40fcc51', '::1', 1569345521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393334353532313b7265717565737465645f706167657c733a303a22223b),
('9d128285d4e552ab57f77d8e1c1d7c14a91739a0', '::1', 1569873344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393837333334343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639383331313634223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393837333334343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('9d5704b9c6ceaa207d16e6d01bba51fddf8aab48', '::1', 1570218322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231383131313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303231353536393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a22645a485036633067565871357a766d7937724c55223b),
('9de11edc9be42f152a517db9410a2da7ec14f175', '::1', 1569603271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393630333234353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393630333237313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('9fcdf6caa105ca34eff159a4c35bfc7e70823a89', '::1', 1569600876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393630303636383b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393630303837363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b);
INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('a100955f4525ac4d146ea00415e9a4cc305d4bed', '::1', 1570040210, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303034303132363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303135363433223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303033393036363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a226737413539706e56734f5157723846594e4b6d68223b),
('a1eb77f9e0a8cb2f87383c57fc61fce01e3fbd25', '::1', 1569833733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393833333733333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353937303430223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393833333733333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('a22fb70d8c01b3f17b642492831cf2237f74aa52', '::1', 1570045107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303034343930373b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303135363433223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303034353130373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a226737413539706e56734f5157723846594e4b6d68223b),
('a4df6febf0d5eeff7dd66d3c592e731aa388a006', '::1', 1570211057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231313035373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('a5e02e70193a8193fe8b64d11fa7417e225896df', '::1', 1570133449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303133333331303b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303133333434393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e44757661304c356634495073796a654b725a37223b),
('a9dc2f1c4f5225d36ab30a13da4cdcf5e2fe9e87', '::1', 1570132239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303133323233393b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303133323233393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e44757661304c356634495073796a654b725a37223b),
('aaeb98bb05cd2521a4d1cc6991c409af0a6350fe', '::1', 1570113251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303131333232323b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303131333235313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('aaedccfe0f4c92601f79af10bd36cfe923b883f6', '::1', 1570210706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231303730363b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('ab5391e3fdac651028942373bfaa6ba80c6b0f0d', '::1', 1570196550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303139363535303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('abeb45300a46583968655d77f9b170c6cd65f8c3', '::1', 1569420475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393432303331363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639333530323435223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393432303437353b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('ad190c19fe64c29858f1d2517c131face8ca74a7', '::1', 1570020359, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303032303132353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303032303335393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('adb6f3775c46dadb79f31912644c300f76e90285', '::1', 1570478923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303437383931343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303437383932333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('b03568f3dd5615906d447202b280c516b70a4288', '::1', 1570539952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303533393836343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303533383338343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a22627761697063314d3247557271766a4458786c37223b),
('b04549a0e7f54d518915cc07074e49db8e2a327c', '::1', 1570465337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303436353333373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436343735323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('b182c9a1bec5d1fb909a56316eea6ce638ad260a', '::1', 1570126098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132363036383b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132363039383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a2247396268776e6632614472317356356b69575446223b),
('b38b84d89637882df5e2ca08e89f28d5220661ab', '::1', 1570015713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303031353633383b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303031353731323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('b573405679cd98a2bebd21364a19370918849b6a', '::1', 1569345521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393334353532303b7265717565737465645f706167657c733a303a22223b),
('b72041488eabe81b747eb12cbb5408f0fe526a98', '::1', 1570205375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230353337353b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('b8646e86c27ce838c50a1972c9b66469c23b8e80', '::1', 1570132660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303133323635393b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303133323233393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e44757661304c356634495073796a654b725a37223b),
('b9b264fa51688b692e51b0d7ad69b11f3352f1b2', '::1', 1570470942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303437303934323b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436383832313b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('bac56768f27487a2068adfbcd362191ac72518a8', '::1', 1570104102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130333930323b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303130343130323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('bdb715baeaca2ce4ee755f70debbdae2b39f95a3', '::1', 1570109520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130393238313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303130393532303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('c0d9b651b0aa02696ca4e657594c46dbc4438cb3', '::1', 1570478097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303437383035313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303437383039373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('c10ac2421d8028f0bb8d82b34d7d595a7f066a71', '::1', 1570018005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303031373732303b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303031383030353b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('c10bfbef82f4d54ce70eb688b75cafd1ed796f2e', '::1', 1569872094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393837323037373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639383331313634223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393837323039333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('c16169d5fddaeca9bf94dff2232bea5757cdb0d5', '::1', 1570103768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130333539353b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('c39c905b817a9aaa8abfeafc5c958218d2ebef17', '::1', 1570212627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303231323632373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('c4e39b13e50746c11b1f76b52be3ffe8d4ccb93c', '::1', 1569928944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393932383934313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639383732303834223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393932383934343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('c73bf85949e38173ae12a68775874afa2279e355', '::1', 1569956053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393935353834373b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393430353130223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393935363035333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('c7460b786e5cded420eff43daf15d4149efd91a1', '::1', 1570478897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303437383631323b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303437383839373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('c8acc518e5db74b9e71ae870c07297619ec879c7', '::1', 1569874889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393837343634303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639383331313634223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393837343838393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('c8acd17509b03d1ee0b6b5fc4957227e4133f1f6', '::1', 1570541684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303534313531343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303534303433363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a226e6c59536b696761686a48307a46446245725542223b),
('c9ee9b2006edf74cbc35209e85192d0ad060d2dd', '::1', 1569424516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393432343531353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639333530323435223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393432343531353b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('cd58f775a983956e5623e7ba4a4afb60c4b2e51f', '::1', 1569951430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393935313133393b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393430353130223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393935313433303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('cec56522fffd7f2201e9a7462968a64748771880', '::1', 1570538014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303533383031343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303533383031343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e726f38426b5878616a524474704c6531677330223b),
('d11f883ef826e44dd8e8ee8544cc087f4a5ed080', '::1', 1570106614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303130363333343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303339303635223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303130363631343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('d127a54721f830dc2c7a2671a7f38a46525baa82', '::1', 1570464752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303436343531313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436343735323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('d3e9181680c567abd8e149a5ee5a57390d92fbd3', '::1', 1568911000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536383931303833353b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353638393031393936223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536383931313030303b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('d410a6fe4924f8719e1070531c3141002437e324', '::1', 1570124755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132343533393b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132343231383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a22464b3344414c314f32694537487a4377664e644d223b),
('d43c2b817b64adbdbcb21d5b4d2c99c31d34157e', '::1', 1570123180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132323937353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132333137393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('d6633fef355b4447ed1358eff5778551d965c241', '::1', 1570471989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303437313935393b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303437313938393b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('d68fde37d8ec2d059bf10598dfd5480a2e627d79', '::1', 1570204531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230343533313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('d78818248ec95803c377185f00d40e2e025af2fc', '::1', 1570024482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303032343337363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303032343438323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('e07e9fce007569b800f14c6d92c1735e58e391e8', '::1', 1569955597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393935353432363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393430353130223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393935353539373b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('e222dd757e8e177e740dcdcc276f4bb9ef5f75b6', '::1', 1570541022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303534303938373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303534303433363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a2274666245753764506c6a72354248775243346b56223b),
('e23ce639b69e76f2901fc64321b5b1d2bc3c3e95', '::1', 1570466631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303436363336303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436343735323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b6d6573736167657c733a33303a22436c69656e74652061646963696f6e61646f20636f6d207375636573736f223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d);
INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('e3d62cf183647abe5bcdb6919100513041dab13e', '::1', 1569599434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393539393433333b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393539393433343b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('e42786b75e368ba0b4858afd817ba19775246af0', '::1', 1570125378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132353137303b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132353332363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e716b746376684a3353786d6e424841324f556c223b),
('e5f5fc6d75c20b3ced30af75b7ece4184f1a1b12', '::1', 1570025876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303032353633383b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303032353837363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('e71318cefb8e1c2be6d8d9cb5873bd98879aeb4d', '::1', 1570127060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132363935383b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132363637323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a2233356a514445685774624a306954727156376450223b),
('e757187413c0905b7806b7ba54ccbde5124b750f', '::1', 1570131223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303133313031333b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132363637323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e44757661304c356634495073796a654b725a37223b),
('e923a0a9759dc0588ee4c9d2524aee6e00f2d546', '::1', 1569518093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393531383039333b7265717565737465645f706167657c733a303a22223b),
('e925b31c6c6f012c985a0256f111b82e3dfb1989', '::1', 1570122112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303132313934353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313033353939223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303132323131323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('e9cbd71745f4d6a4482a75ef58749a2004efdcf9', '::1', 1570039341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303033393036333b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730303135363433223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303033393036363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a224e424f6e4b30726c7a544470536378773575314a223b),
('f02bf7d4cb972df19d9960a9e89d22a136661699', '::1', 1570018713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303031383539353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303031383731333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('f2f084e8ba5c5072dae099412bc425c269af859e', '::1', 1569957099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393935373039353b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393430353130223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393935373039383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('f30e97c0bf3b46e9b2bd6d357868926de1e3905a', '::1', 1570204887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303230343838373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313231393730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('f3aa8aa24ab29f47b280e4d8bfe6b884cfa2f02f', '::1', 1569928648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393932383630393b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639383732303834223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393932383634383b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('f798bd4aa6a1d088268870a31a58280acda0d451', '::1', 1570542436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303534323338373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730343634353136223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303534303433363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b757365725f637372667c733a32303a2239354e4254784657456e75654d5862696c4a3256223b),
('f877290db7733aecc33690740d799052bb1a5ace', '::1', 1570468030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303436383033303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353730313935373238223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303436343735323b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('f91011134a6212d5c83d5bb1a6abbb04b3a9770f', '::1', 1569434255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393433343234343b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639333530323435223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393433343235353b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('fb4a2fc7d48e7ddf60252bab11c6739c7b751711', '::1', 1570028163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537303032373837363b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639393530363439223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313537303032383136333b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('fbb7c8895f6b1f0c52cd19acc86ece2b01b187d0', '::1', 1569598346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393539383035373b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393539383334363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('fd5b0f08a58b75d0246ffb9ab5af0ff44bb1ad45', '::1', 1569602106, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393630323038333b7265717565737465645f706167657c733a333a22706f73223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353139383631223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393630323130363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b),
('fff3d4cfad2659eed97de853d560a37d46aeb308', '::1', 1569831466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536393833313436363b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a333a2261646d223b757365726e616d657c733a333a2261646d223b656d61696c7c733a32393a22636f6e7461746f40656d70726573616d6f6465726e612e636f6d2e6272223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353639353937303430223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2230223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c733a313a2230223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313536393833313436363b72656769737465725f69647c733a313a2233223b636173685f696e5f68616e647c733a373a2232302e30303030223b72656769737465725f6f70656e5f74696d657c733a31393a22323031362d30372d32382031353a31333a3538223b);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_settings`
--

CREATE TABLE IF NOT EXISTS `sma_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `accounting_method` tinyint(4) NOT NULL DEFAULT '0',
  `default_currency` varchar(3) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '1.0',
  `default_tax_rate2` int(11) NOT NULL DEFAULT '0',
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) DEFAULT NULL,
  `quote_prefix` varchar(20) DEFAULT NULL,
  `purchase_prefix` varchar(20) DEFAULT NULL,
  `transfer_prefix` varchar(20) DEFAULT NULL,
  `delivery_prefix` varchar(20) DEFAULT NULL,
  `payment_prefix` varchar(20) DEFAULT NULL,
  `return_prefix` varchar(20) DEFAULT NULL,
  `returnp_prefix` varchar(20) DEFAULT NULL,
  `expense_prefix` varchar(20) DEFAULT NULL,
  `item_addition` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `product_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `overselling` tinyint(1) NOT NULL DEFAULT '0',
  `restrict_user` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT '0',
  `timezone` varchar(100) DEFAULT NULL,
  `iwidth` int(11) NOT NULL DEFAULT '0',
  `iheight` int(11) NOT NULL,
  `twidth` int(11) NOT NULL,
  `theight` int(11) NOT NULL,
  `watermark` tinyint(1) DEFAULT NULL,
  `reg_ver` tinyint(1) DEFAULT NULL,
  `allow_reg` tinyint(1) DEFAULT NULL,
  `reg_notification` tinyint(1) DEFAULT NULL,
  `auto_reg` tinyint(1) DEFAULT NULL,
  `protocol` varchar(20) NOT NULL DEFAULT 'mail',
  `mailpath` varchar(55) DEFAULT '/usr/sbin/sendmail',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT '25',
  `smtp_crypto` varchar(10) DEFAULT NULL,
  `corn` datetime DEFAULT NULL,
  `customer_group` int(11) NOT NULL,
  `default_email` varchar(100) NOT NULL,
  `mmode` tinyint(1) NOT NULL,
  `bc_fix` tinyint(4) NOT NULL DEFAULT '0',
  `auto_detect_barcode` tinyint(1) NOT NULL DEFAULT '0',
  `captcha` tinyint(1) NOT NULL DEFAULT '1',
  `reference_format` tinyint(1) NOT NULL DEFAULT '1',
  `racks` tinyint(1) DEFAULT '0',
  `attributes` tinyint(1) NOT NULL DEFAULT '0',
  `product_expiry` tinyint(1) NOT NULL DEFAULT '0',
  `decimals` tinyint(2) NOT NULL DEFAULT '2',
  `qty_decimals` tinyint(2) NOT NULL DEFAULT '2',
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `invoice_view` tinyint(1) DEFAULT '0',
  `default_biller` int(11) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT '0',
  `each_spent` decimal(15,4) DEFAULT NULL,
  `ca_point` tinyint(4) DEFAULT NULL,
  `each_sale` decimal(15,4) DEFAULT NULL,
  `sa_point` tinyint(4) DEFAULT NULL,
  `update` tinyint(1) DEFAULT '0',
  `sac` tinyint(1) DEFAULT '0',
  `display_all_products` tinyint(1) DEFAULT '0',
  `display_symbol` tinyint(1) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `remove_expired` tinyint(1) DEFAULT '0',
  `barcode_separator` varchar(2) NOT NULL DEFAULT '_',
  `set_focus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_settings`
--

INSERT INTO `sma_settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `accounting_method`, `default_currency`, `default_tax_rate`, `rows_per_page`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `delivery_prefix`, `payment_prefix`, `return_prefix`, `returnp_prefix`, `expense_prefix`, `item_addition`, `theme`, `product_serial`, `default_discount`, `product_discount`, `discount_method`, `tax1`, `tax2`, `overselling`, `restrict_user`, `restrict_calendar`, `timezone`, `iwidth`, `iheight`, `twidth`, `theight`, `watermark`, `reg_ver`, `allow_reg`, `reg_notification`, `auto_reg`, `protocol`, `mailpath`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `corn`, `customer_group`, `default_email`, `mmode`, `bc_fix`, `auto_detect_barcode`, `captcha`, `reference_format`, `racks`, `attributes`, `product_expiry`, `decimals`, `qty_decimals`, `decimals_sep`, `thousands_sep`, `invoice_view`, `default_biller`, `envato_username`, `purchase_code`, `rtl`, `each_spent`, `ca_point`, `each_sale`, `sa_point`, `update`, `sac`, `display_all_products`, `display_symbol`, `symbol`, `remove_expired`, `barcode_separator`, `set_focus`) VALUES
(1, 'logo2.png', 'logo6.jpg', 'Aroeira', 'portuguese-brazilian', 1, 0, 'USD', 1, 10, '3.0.2.13', 1, 5, 'VENDA', 'ORC', 'PO', 'TR', 'DO', 'IPAY', 'SR', 'PR', NULL, 0, 'default', 1, 1, 1, 1, 1, 1, 0, 1, 0, 'America/Sao_Paulo', 800, 800, 60, 60, 0, 0, 0, 0, NULL, 'mail', '/usr/sbin/sendmail', 'mail.seedcommerce.com.br', 'pdv@seedcommerce.com.br', 'jEFTM4T63AiQ9dsidxhPKt9CIg4HQjCN58n/RW9vmdC/UDXCzRLR469ziZ0jjpFlbOg43LyoSmpJLBkcAHh0Yw==', '25', NULL, NULL, 1, 'megacomsistemas@gmail.com', 0, 4, 1, 0, 2, 1, 1, 0, 2, 2, '.', ',', 0, NULL, 'obviosistemas', '5e5b9b9d-6af2-422f-9f0d-8cb52b3200c6', 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '_', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_skrill`
--

CREATE TABLE IF NOT EXISTS `sma_skrill` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL DEFAULT 'testaccount2@moneybookers.com',
  `secret_word` varchar(20) NOT NULL DEFAULT 'mbtest',
  `skrill_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_skrill`
--

INSERT INTO `sma_skrill` (`id`, `active`, `account_email`, `secret_word`, `skrill_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 0, 'testaccount2@moneybookers.com', 'mbtest', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_subcategories`
--

CREATE TABLE IF NOT EXISTS `sma_subcategories` (
`id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(55) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_subcategories`
--

INSERT INTO `sma_subcategories` (`id`, `category_id`, `code`, `name`, `image`) VALUES
(1, 1, '123', 'Salgadinhos', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_suspended_bills`
--

CREATE TABLE IF NOT EXISTS `sma_suspended_bills` (
`id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `suspend_note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_suspended_bills`
--

INSERT INTO `sma_suspended_bills` (`id`, `date`, `customer_id`, `customer`, `count`, `order_discount_id`, `order_tax_id`, `total`, `biller_id`, `warehouse_id`, `created_by`, `suspend_note`) VALUES
(1, '2016-05-20 21:37:27', 1, 'MEGA SISTEMAS', 3, NULL, 1, '50.8500', 3, 1, 1, '01'),
(2, '2016-05-20 21:37:35', 1, 'MEGA SISTEMAS', 1, NULL, 1, '16.9500', 3, 1, 1, '02'),
(3, '2016-07-28 18:46:37', 1, 'Jr Next', 4, NULL, 1, '67.8000', 4, 1, 2, 'teste'),
(4, '2016-07-28 18:47:45', 1, 'Jr Next', 1, NULL, 1, '16.9500', 4, 1, 2, '01'),
(5, '2016-07-30 16:39:08', 1, 'Jr Next', 3, NULL, 1, '50.8500', 4, 1, 2, 'teste 17'),
(6, '2019-09-16 19:34:59', 1, 'Jr Next2', 1, NULL, 1, '16.9500', 4, 1, 2, '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_suspended_items`
--

CREATE TABLE IF NOT EXISTS `sma_suspended_items` (
`id` int(11) NOT NULL,
  `suspend_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_suspended_items`
--

INSERT INTO `sma_suspended_items` (`id`, `suspend_id`, `product_id`, `product_code`, `product_name`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `option_id`, `product_type`, `real_unit_price`) VALUES
(2, 1, 1, '07327550', 'Produto Teste', '16.9500', '16.9500', '3.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '50.8500', '', 0, 'standard', '16.9500'),
(3, 2, 1, '07327550', 'Produto Teste', '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', 0, 'standard', '16.9500'),
(4, 3, 1, '07327550', 'Produto Teste', '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', 0, 'standard', '16.9500'),
(5, 3, 1, '07327550', 'Produto Teste', '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', 0, 'standard', '16.9500'),
(6, 3, 1, '07327550', 'Produto Teste', '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', 0, 'standard', '16.9500'),
(7, 3, 1, '07327550', 'Produto Teste', '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', 0, 'standard', '16.9500'),
(8, 4, 1, '07327550', 'Produto Teste', '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', 0, 'standard', '16.9500'),
(9, 5, 1, '07327550', 'Produto Teste', '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', 0, 'standard', '16.9500'),
(10, 5, 1, '07327550', 'Produto Teste', '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', 0, 'standard', '16.9500'),
(11, 5, 1, '07327550', 'Produto Teste', '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', 0, 'standard', '16.9500'),
(12, 6, 1, '07327550', 'Produto Teste', '16.9500', '16.9500', '1.0000', 1, '0.0000', 1, '0.0000', '0', '0.0000', '16.9500', '', 0, 'standard', '16.9500');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_tax_rates`
--

CREATE TABLE IF NOT EXISTS `sma_tax_rates` (
`id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `rate` decimal(12,4) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_tax_rates`
--

INSERT INTO `sma_tax_rates` (`id`, `name`, `code`, `rate`, `type`) VALUES
(1, 'No Tax', 'NT', '0.0000', '2'),
(2, 'VAT @10%', 'VAT10', '10.0000', '1'),
(3, 'GST @6%', 'GST', '6.0000', '1'),
(4, 'VAT @20%', 'VT20', '20.0000', '1'),
(5, 'ICMS', 'ICMS', '11.0000', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_tickets`
--

CREATE TABLE IF NOT EXISTS `sma_tickets` (
`id` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type_ticket` varchar(30) NOT NULL,
  `ticket_datails` varchar(8000) NOT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_transfers`
--

CREATE TABLE IF NOT EXISTS `sma_transfers` (
`id` int(11) NOT NULL,
  `transfer_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_warehouse_id` int(11) NOT NULL,
  `from_warehouse_code` varchar(55) NOT NULL,
  `from_warehouse_name` varchar(55) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `to_warehouse_code` varchar(55) NOT NULL,
  `to_warehouse_name` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `grand_total` decimal(25,4) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'pending',
  `shipping` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_transfer_items`
--

CREATE TABLE IF NOT EXISTS `sma_transfer_items` (
`id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) DEFAULT NULL,
  `quantity_balance` decimal(15,4) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_users`
--

CREATE TABLE IF NOT EXISTS `sma_users` (
`id` int(11) unsigned NOT NULL,
  `last_ip_address` varbinary(45) DEFAULT NULL,
  `ip_address` varbinary(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(55) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `warehouse_id` int(10) unsigned DEFAULT NULL,
  `biller_id` int(10) unsigned DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `show_cost` tinyint(1) DEFAULT '0',
  `show_price` tinyint(1) DEFAULT '0',
  `award_points` int(11) DEFAULT '0',
  `view_right` tinyint(1) NOT NULL DEFAULT '0',
  `edit_right` tinyint(1) NOT NULL DEFAULT '0',
  `allow_discount` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_users`
--

INSERT INTO `sma_users` (`id`, `last_ip_address`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`, `gender`, `group_id`, `warehouse_id`, `biller_id`, `company_id`, `show_cost`, `show_price`, `award_points`, `view_right`, `edit_right`, `allow_discount`) VALUES
(2, 0x3a3a31, 0x3a3a31, 'adm', '4a6be2300650b4bf12e02bc9dedf91c3b3977443', NULL, 'contato@empresamoderna.com.br', NULL, NULL, NULL, NULL, 1469728981, 1570537707, 1, 'Suporte ', 'Moderna', 'Empresa Moderna', '89994302106', NULL, 'male', 1, 0, 0, NULL, 0, 0, 0, 1, 0, 0),
(3, NULL, 0x3a3a31, 'administrador', 'bf70fc792ec8b4c0ab6f7929c04239ee23a49bf7', NULL, 'carne@gmail.com', NULL, NULL, NULL, NULL, 1568638687, 1568638687, 1, 'Casa ', 'da Carne', 'Casa da Carne', '(45) 3306-6087', NULL, 'male', 2, 0, 0, NULL, 0, 0, 0, 1, 0, 0),
(4, 0x3a3a31, 0x3a3a31, 'admin', '57daa3ec5103688d538794029a367113ca653125', NULL, 'abc@gmail.com', NULL, NULL, NULL, NULL, 1568833391, 1568833417, 1, 'admin', 'teste', 'empresa moderna', '45998397009', NULL, 'male', 2, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_user_logins`
--

CREATE TABLE IF NOT EXISTS `sma_user_logins` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_user_logins`
--

INSERT INTO `sma_user_logins` (`id`, `user_id`, `company_id`, `ip_address`, `login`, `time`) VALUES
(21, 2, NULL, 0x3a3a31, 'junior', '2019-09-10 17:58:54'),
(22, 2, NULL, 0x3a3a31, 'junior', '2019-09-11 13:27:57'),
(23, 2, NULL, 0x3a3a31, 'junior', '2019-09-11 19:16:39'),
(24, 2, NULL, 0x3a3a31, 'junior', '2019-09-13 03:49:23'),
(25, 2, NULL, 0x3a3a31, 'junior', '2019-09-13 17:35:31'),
(26, 2, NULL, 0x3a3a31, 'junior', '2019-09-16 11:20:28'),
(27, 2, NULL, 0x3a3a31, 'junior', '2019-09-16 12:33:38'),
(28, 2, NULL, 0x3a3a31, 'adm', '2019-09-16 12:36:05'),
(29, 2, NULL, 0x3a3a31, 'adm', '2019-09-16 19:14:40'),
(30, 2, NULL, 0x3a3a31, 'adm', '2019-09-18 19:01:59'),
(31, 2, NULL, 0x3a3a31, 'adm', '2019-09-18 19:02:25'),
(32, 4, NULL, 0x3a3a31, 'admin', '2019-09-18 19:03:37'),
(33, 2, NULL, 0x3a3a31, 'adm', '2019-09-18 19:40:02'),
(34, 2, NULL, 0x3a3a31, 'adm', '2019-09-19 12:11:29'),
(35, 2, NULL, 0x3a3a31, 'adm', '2019-09-19 14:06:36'),
(36, 2, NULL, 0x3a3a31, 'adm', '2019-09-19 16:33:59'),
(37, 2, NULL, 0x3a3a31, 'adm', '2019-09-20 13:00:17'),
(38, 2, NULL, 0x3a3a31, 'adm', '2019-09-23 18:34:27'),
(39, 2, NULL, 0x3a3a31, 'adm', '2019-09-24 18:37:26'),
(40, 2, NULL, 0x3a3a31, 'adm', '2019-09-25 13:59:54'),
(41, 2, NULL, 0x3a3a31, 'adm', '2019-09-26 17:44:21'),
(42, 2, NULL, 0x3a3a31, 'adm', '2019-09-27 15:10:40'),
(43, 2, NULL, 0x3a3a31, 'adm', '2019-09-30 08:12:44'),
(44, 2, NULL, 0x3a3a31, 'adm', '2019-09-30 19:34:44'),
(45, 2, NULL, 0x3a3a31, 'adm', '2019-10-01 11:17:04'),
(46, 2, NULL, 0x3a3a31, 'adm', '2019-10-01 14:35:10'),
(47, 2, NULL, 0x3a3a31, 'adm', '2019-10-01 17:24:09'),
(48, 2, NULL, 0x3a3a31, 'adm', '2019-10-02 11:27:23'),
(49, 2, NULL, 0x3a3a31, 'adm', '2019-10-02 17:57:45'),
(50, 2, NULL, 0x3a3a31, 'adm', '2019-10-03 11:53:19'),
(51, 2, NULL, 0x3a3a31, 'adm', '2019-10-03 16:59:30'),
(52, 2, NULL, 0x3a3a31, 'adm', '2019-10-04 13:28:48'),
(53, 2, NULL, 0x3a3a31, 'adm', '2019-10-07 16:08:36'),
(54, 2, NULL, 0x3a3a31, 'adm', '2019-10-08 12:28:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_variants`
--

CREATE TABLE IF NOT EXISTS `sma_variants` (
`id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_warehouses`
--

CREATE TABLE IF NOT EXISTS `sma_warehouses` (
`id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` varchar(255) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_warehouses`
--

INSERT INTO `sma_warehouses` (`id`, `code`, `name`, `address`, `map`, `phone`, `email`) VALUES
(1, '01', 'Estoque 1', '<p>Endereço, Cidade</p>', NULL, '012345678', 'empresa1@jr.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_warehouses_products`
--

CREATE TABLE IF NOT EXISTS `sma_warehouses_products` (
`id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL,
  `avg_cost` decimal(25,4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sma_warehouses_products`
--

INSERT INTO `sma_warehouses_products` (`id`, `product_id`, `warehouse_id`, `quantity`, `rack`, `avg_cost`) VALUES
(9, 8, 1, '50.0000', NULL, '0.0000'),
(10, 1, 1, '-1.0000', NULL, '0.0000'),
(11, 3, 1, '1000.0000', NULL, '0.0000'),
(12, 2, 1, '1.0000', NULL, '0.0000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sma_warehouses_products_variants`
--

CREATE TABLE IF NOT EXISTS `sma_warehouses_products_variants` (
`id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
 ADD PRIMARY KEY (`captcha_id`), ADD KEY `word` (`word`);

--
-- Indexes for table `sma_categories`
--
ALTER TABLE `sma_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_companies`
--
ALTER TABLE `sma_companies`
 ADD PRIMARY KEY (`id`), ADD KEY `group_id` (`group_id`), ADD KEY `group_id_2` (`group_id`);

--
-- Indexes for table `sma_costing`
--
ALTER TABLE `sma_costing`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `card_no` (`card_no`);

--
-- Indexes for table `sma_groups`
--
ALTER TABLE `sma_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
 ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `sma_payments`
--
ALTER TABLE `sma_payments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_paypal`
--
ALTER TABLE `sma_paypal`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_settings`
--
ALTER TABLE `sma_pos_settings`
 ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `sma_products`
--
ALTER TABLE `sma_products`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `category_id` (`category_id`), ADD KEY `id` (`id`), ADD KEY `id_2` (`id`), ADD KEY `category_id_2` (`category_id`);

--
-- Indexes for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
 ADD PRIMARY KEY (`id`), ADD KEY `purchase_id` (`purchase_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
 ADD PRIMARY KEY (`id`), ADD KEY `quote_id` (`quote_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_return_items`
--
ALTER TABLE `sma_return_items`
 ADD PRIMARY KEY (`id`), ADD KEY `sale_id` (`sale_id`), ADD KEY `product_id` (`product_id`), ADD KEY `product_id_2` (`product_id`,`sale_id`), ADD KEY `sale_id_2` (`sale_id`,`product_id`);

--
-- Indexes for table `sma_return_purchases`
--
ALTER TABLE `sma_return_purchases`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `sma_return_purchase_items`
--
ALTER TABLE `sma_return_purchase_items`
 ADD PRIMARY KEY (`id`), ADD KEY `purchase_id` (`purchase_id`), ADD KEY `product_id` (`product_id`), ADD KEY `product_id_2` (`product_id`,`purchase_id`), ADD KEY `purchase_id_2` (`purchase_id`,`product_id`);

--
-- Indexes for table `sma_return_sales`
--
ALTER TABLE `sma_return_sales`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `sma_sales`
--
ALTER TABLE `sma_sales`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
 ADD PRIMARY KEY (`id`), ADD KEY `sale_id` (`sale_id`), ADD KEY `product_id` (`product_id`), ADD KEY `product_id_2` (`product_id`,`sale_id`), ADD KEY `sale_id_2` (`sale_id`,`product_id`);

--
-- Indexes for table `sma_sessions`
--
ALTER TABLE `sma_sessions`
 ADD PRIMARY KEY (`id`), ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `sma_settings`
--
ALTER TABLE `sma_settings`
 ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sma_skrill`
--
ALTER TABLE `sma_skrill`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_subcategories`
--
ALTER TABLE `sma_subcategories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_tickets`
--
ALTER TABLE `sma_tickets`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
 ADD PRIMARY KEY (`id`), ADD KEY `transfer_id` (`transfer_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_users`
--
ALTER TABLE `sma_users`
 ADD PRIMARY KEY (`id`), ADD KEY `group_id` (`group_id`,`warehouse_id`,`biller_id`), ADD KEY `group_id_2` (`group_id`,`company_id`);

--
-- Indexes for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_variants`
--
ALTER TABLE `sma_variants`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
 ADD PRIMARY KEY (`id`), ADD KEY `product_id` (`product_id`), ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
 ADD PRIMARY KEY (`id`), ADD KEY `option_id` (`option_id`), ADD KEY `product_id` (`product_id`), ADD KEY `warehouse_id` (`warehouse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
MODIFY `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_categories`
--
ALTER TABLE `sma_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_companies`
--
ALTER TABLE `sma_companies`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `sma_costing`
--
ALTER TABLE `sma_costing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_groups`
--
ALTER TABLE `sma_groups`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_payments`
--
ALTER TABLE `sma_payments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sma_products`
--
ALTER TABLE `sma_products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_return_items`
--
ALTER TABLE `sma_return_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_return_purchases`
--
ALTER TABLE `sma_return_purchases`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_return_purchase_items`
--
ALTER TABLE `sma_return_purchase_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_return_sales`
--
ALTER TABLE `sma_return_sales`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_sales`
--
ALTER TABLE `sma_sales`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `sma_subcategories`
--
ALTER TABLE `sma_subcategories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sma_tickets`
--
ALTER TABLE `sma_tickets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_users`
--
ALTER TABLE `sma_users`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `sma_variants`
--
ALTER TABLE `sma_variants`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
