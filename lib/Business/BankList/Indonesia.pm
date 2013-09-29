package Business::BankList::Indonesia;

use 5.010001;
use strict;
use warnings;

use Perinci::Sub::Gen::AccessTable 0.14 qw(gen_read_table_func);

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
                       list_id_banks
               );

our %SPEC;

# VERSION

# BEGIN SNIPPET id=data
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudang-data-interim/table/idn_bank/data.csv
# src-revision: bc00a6a390db06bffcfcfbd063d309f7c1337625
# revision-date: Wed Jul 11 12:22:39 2012 +0700
# generate-date: Wed Jul 11 12:46:34 2012
# generated-by: /mnt/home/s1/repos/gudang-data-interim/bin/gen-perl-data-snippet
our $data = [
    ['1','BANK INDONESIA','bi',''],
    ['3','BANK OF AMERICA, NA','','033'],
    ['4','BANK OF CHINA LIMITED','','069'],
    ['5','BANK RAKYAT INDONESIA SYARIAH TBK.','bri_syariah',''],
    ['6','CAPITAL','',''],
    ['7','CITIBANK, NA','citibank','031'],
    ['8','CREDIT LYONNAIS','',''],
    ['9','DEUTSCHE BANK AG','','067'],
    ['10','JPMORGAN CHASE BANK, NA','','032'],
    ['11','PT. BANK BNI SYARIAH','bni_syariah',''],
    ['12','PT. BANK DANAMON SYARIAH','danamon_syariah',''],
    ['13','PT. BANK JABAR BANTEN SYARIAH','bjb_syariah','110'],
    ['14','PT. BANK PEMBANGUNAN DAERAH JABAR DAN BANTEN TBK.','bjb','110'],
    ['15','PT. BANK PUNDI INDONESIA TBK.','pundi',''],
    ['16','PT. BII SYARIAH','bii_syariah',''],
    ['17','PT. AGRONIAGA BANK','','494'],
    ['18','PT. ANGLOMAS INTERNATIONAL BANK','','531'],
    ['19','PT. ANZ PANIN BANK','anz','061'],
    ['20','PT. BANK AGRIS','',''],
    ['21','PT. BANK AKITA','','525'],
    ['22','PT. BANK ANDARA','',''],
    ['23','PT. BANK ANTAR DAERAH','anda','088'],
    ['24','PT. BANK ARTHA GRAHA INTERNASIONAL','arthagraha','037'],
    ['25','PT. BANK ARTOS INDONESIA','artos','542'],
    ['26','PT. BANK BCA SYARIAH','bca_syariah',''],
    ['27','PT. BANK BISNIS INTERNATIONAL','bisnis','459'],
    ['28','PT. BANK BNP PARIBAS INDONESIA','bnpparibas','057'],
    ['29','PT. BANK BUMI ARTA','bumiarta','076'],
    ['30','PT. BANK BUMIPUTERA','bumiputera','485'],
    ['31','PT. BANK CHINATRUST INDONESIA','chinatrust','949'],
    ['32','PT. BANK CIMB NIAGA TBK.','cimbniaga','022'],
    ['33','PT. BANK COMMONWEALTH','commonwealth','950'],
    ['34','PT. BANK DANAMON INDONESIA TBK.','danamon','011'],
    ['35','PT. BANK DBS INDONESIA','dbs','046'],
    ['36','PT. BANK DIPO INTERNATIONAL','dipo','523'],
    ['37','PT. BANK EKONOMI RAHARJA','ekonomi','087'],
    ['38','PT. BANK FAMA INTERNATIONAL','fama','562'],
    ['39','PT. BANK GANESHA','ganesha','161'],
    ['40','PT. BANK HANA','hana',''],
    ['41','PT. BANK HARDA INTERNASIONAL','harda','567'],
    ['42','PT. BANK HARFA','harfa','517'],
    ['43','PT. BANK HS 1906','hs','212'],
    ['44','PT. BANK ICBC INDONESIA','icbc',''],
    ['45','PT. BANK INA PERDANA','','513'],
    ['46','PT. BANK INDEX SELINDO','','555'],
    ['47','PT. BANK INTERNASIONAL INDONESIA','bii','016'],
    ['48','PT. BANK JASA ARTA','jasaarta','422'],
    ['49','PT. BANK JASA JAKARTA','jasajakarta','427'],
    ['50','PT. BANK KESAWAN','kesawan','167'],
    ['51','PT. BANK KESEJAHTERAAN EKONOMI','','535'],
    ['52','PT. BANK LIMAN INTERNATIONAL','liman','526'],
    ['53','PT. BANK MANDIRI TBK.','mandiri','008'],
    ['54','PT. BANK MASPION INDONESIA','maspion','157'],
    ['55','PT. BANK MAYAPADA TBK.','mayapada','097'],
    ['56','PT. BANK MAYBANK INDOCORP','maybank','947'],
    ['57','PT. BANK MAYORA INDONESIA','mayora','553'],
    ['58','PT. BANK MEGA TBK.','mega','426'],
    ['59','PT. BANK MESTIKA DHARMA','','151'],
    ['60','PT. BANK METRO EKSPRESS','','152'],
    ['61','PT. BANK MITRANIAGA','','491'],
    ['62','PT. BANK MIZUHO INDONESIA','','048'],
    ['63','PT. BANK MUAMALAT INDONESIA','muamalat','147'],
    ['64','PT. BANK MULTIARTA SENTOSA','','548'],
    ['65','PT. BANK MUTIARA TBK.','mutiara','095'],
    ['66','PT. BANK NATIONALNOBU','nobu',''],
    ['67','PT. BANK NEGARA INDONESIA 46 TBK.','bni','009'],
    ['68','PT. BANK NIAGA SYARIAH TBK.','niaga_syariah',''],
    ['69','PT. BANK NUSANTARA PARAHYANGAN','bnp','145'],
    ['70','PT. BANK OCBC NISP TBK','ocbcnisp','028'],
    ['71','PT. BANK PEMBANGUNAN DAERAH BALI','bali','129'],
    ['72','PT. BANK PEMBANGUNAN DAERAH DIY','diy','112'],
    ['73','PT. BANK PEMBANGUNAN DAERAH JAMBI','jambi','115'],
    ['74','PT. BANK PEMBANGUNAN DAERAH JATENG','jateng','113'],
    ['75','PT. BANK PEMBANGUNAN DAERAH JATIM','jatim','114'],
    ['76','PT. BANK PEMBANGUNAN DAERAH KALBAR','kalbar','123'],
    ['77','PT. BANK PEMBANGUNAN DAERAH KALSEL','kalsel','122'],
    ['78','PT. BANK PEMBANGUNAN DAERAH KALTENG','kalteng','125'],
    ['79','PT. BANK PEMBANGUNAN DAERAH KALTIM','kaltim','124'],
    ['80','PT. BANK PEMBANGUNAN DAERAH LAMPUNG','lampung','121'],
    ['81','PT. BANK PEMBANGUNAN DAERAH MALUKU','maluku','131'],
    ['82','PT. BANK PEMBANGUNAN DAERAH NTB','ntb','128'],
    ['83','PT. BANK PEMBANGUNAN DAERAH NTT','ntt','130'],
    ['84','PT. BANK PEMBANGUNAN DAERAH PAPUA','papua','132'],
    ['85','PT. BANK PEMBANGUNAN DAERAH RIAU','riau','119'],
    ['86','PT. BANK PEMBANGUNAN DAERAH SULAWESI SELATAN DAN SULAWESI BARAT','sulselbar','126'],
    ['87','PT. BANK PEMBANGUNAN DAERAH SUMBAR','sumbar',''],
    ['88','PT. BANK PEMBANGUNAN DAERAH SUMATERA SELATAN DAN BANGKA BELITUNG','sumselbabel','120'],
    ['89','PT. BANK PEMBANGUNAN DAERAH SUMUT','sumut','117'],
    ['90','PT. BANK PEMBANGUNAN DI ACEH','aceh','116'],
    ['91','PT. BANK PEMBANGUNAN SULUT','sulut','127'],
    ['92','PT. BANK PERMATA SYARIAH TBK.','permata_syariah',''],
    ['93','PT. BANK PERMATA TBK.','permata','013'],
    ['94','PT. BANK PERSYARIKATAN INDONESIA','','521'],
    ['95','PT. BANK RABOBANK INTERNATIONAL INDONESIA','rabo','060'],
    ['96','PT. BANK RAKYAT INDONESIA TBK.','bri','002'],
    ['97','PT. BANK RESONA PERDANIA','','047'],
    ['98','PT. BANK ROYAL INDONESIA','royal','501'],
    ['99','PT. BANK SAHABAT PURBA DANARTA','','547'],
    ['100','PT. BANK SBI INDONESIA','sbi','498'],
    ['101','PT. BANK SINAR HARAPAN BALI','','564'],
    ['102','PT. BANK SINAR MAS','sinarmas','153'],
    ['103','PT. BANK SUMITOMO MITSUI INDONESIA','','045'],
    ['104','PT. BANK SWADESI TBK.','swadesi','146'],
    ['105','PT. BANK SWAGUNA','swaguna','405'],
    ['106','PT. BANK SYARIAH MANDIRI TBK.','mandiri_syariah','451'],
    ['107','PT. BANK SYARIAH MEGA INDONESIA','mega_syariah','506'],
    ['108','PT. BANK TABUNGAN','btpn','213'],
    ['109','PT. BANK TABUNGAN NEGARA','btn','200'],
    ['110','PT. BANK TABUNGAN NEGARA SYARIAH','btn_syariah',''],
    ['111','PT. BANK TABUNGAN SYARIAH','btpn_syariah',''],
    ['112','PT. BANK UOB BUANA TBK.','uobbuana','023'],
    ['113','PT. BANK VICTORIA INTERNATIONAL','victoria','566'],
    ['114','PT. BANK WINDU KENTJANA INTL TBK.','windu','036'],
    ['115','PT. BANK WOORI INDONESIA','','068'],
    ['116','PT. BANK YUDHA BHAKTI','','490'],
    ['117','PT. BPD BENGKULU','bengkulu','133'],
    ['118','PT. BPD DKI JAKARTA','dki','111'],
    ['119','PT. BPD DKI SYARIAH','dki_syariah',''],
    ['120','PT. BPD SULAWESI TENGGARA','sultra','135'],
    ['121','PT. BPD SUMBAR SYARIAH','sumbar_syariah',''],
    ['122','PT. BPD SUMSEL SYARIAH','sumsel_syariah',''],
    ['123','PT. BUKOPIN','bukopin','441'],
    ['124','PT. BANK CENTRAL ASIA TBK.','bca','014'],
    ['125','PT. BANK CAPITAL INDONESIA TBK.','','054'],
    ['126','PT. BANK SYARIAH BUKOPIN','bukopin_syariah',''],
    ['127','PT. CENTRATAMA NASIONAL BANK','','559'],
    ['128','PT. KOREA EXCHANGE BANK DANAMON','','059'],
    ['129','PT. PANIN BANK TBK.','panin','019'],
    ['130','PT. PRIMA MASTER BANK','','520'],
    ['132','STANDARD CHARTERED BANK','stanchart','050'],
    ['133','THE BANGKOK BANK PCL','','040'],
    ['134','THE BANK OF TOKYO MITSUBISHI LTD.','tokyomitsubishi','042'],
    ['135','THE HONGKONG AND SHANGHAI BC','hsbc','041'],
    ['136','THE ROYAL BANK OF SCOTLAND NV','rbs',''],
    ['3001','PT. BANK PERKREDITAN RAKYAT KARYAJATNIKA SADAYA','bpr_ks',''],
    ['1001','ABN AMRO BANK NV','abnamro','052'],
]
;
# END SNIPPET id=data
# BEGIN SNIPPET id=meta
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudang-data-interim/table/idn_bank/meta.yaml
# src-revision: 2bb9d9f5dadbe6c87f2f958c25d7033b6ac4877a
# revision-date: Wed Jul 11 11:58:37 2012 +0700
# generate-date: Wed Jul 11 12:46:34 2012
# generated-by: /mnt/home/s1/repos/gudang-data-interim/bin/gen-perl-meta-snippet
our $meta = {
  "fields" => {
    atmb_code => {
      "description.alt.lang.id_ID" => "Kode jaringan PRIMA mengikuti kode ini.",
      "index" => 3,
      "schema" => ["str*", { match => "^\\d{3}\$" }],
      "sortable" => 1,
      "summary" => "3-digit ATM Bersama code",
      "summary.alt.lang.id_ID" => "Kode ATM Bersama",
      "unique" => "",
    },
    id => {
      "description.alt.lang.id_ID" => "Dibuat oleh proyek ini, tidak mengikuti otoritas manapun, pakai hati-hati.",
      "index" => 0,
      "schema" => "int*",
      "sortable" => 1,
      "summary" => "ID",
      "summary.alt.lang.id_ID" => "Kode angka",
      "unique" => 1,
    },
    name => {
      "description.alt.lang.id_ID" => "Umumnya berupa nama perusahaan.",
      "index" => 1,
      "schema" => "str*",
      "sortable" => 1,
      "summary" => "Name",
      "summary.alt.lang.id_ID" => "Nama",
      "unique" => 1,
    },
    nickname => {
      "description.alt.lang.id_ID" => "Kriteria penamaan: semua kata disatukan kecuali sufiks '_syariah', nama propinsi mis 'bpd_jateng'; umumnya 'bank' tidak perlu ditambahkan lagi, mis: 'rabo' bukan 'rabobank'; sufiks '_syariah' selalu di belakang (mis: PT. BANK SYARIAH MANDIRI TBK. tetap menjadi 'mandiri_syariah').",
      "index" => 2,
      "schema" => "str",
      "sortable" => 1,
      "summary" => "Short name",
      "summary.alt.lang.id_ID" => "Nama pendek",
      "unique" => 1,
    },
  },
  "pk" => "id",
  "summary" => "Indonesian banks/financial institutions",
  "summary.alt.lang.id_ID" => "Bank/institusi finansial di Indonesia",
  "table_aliases.alt.lang.id_ID" => ["bank_idn"],
}
;
# END SNIPPET id=meta
my $res = gen_read_table_func(
    name => 'list_id_banks',
    table_data => $data,
    table_spec => $meta,
    default_fields => 'name',
    langs => ['en_US', 'id_ID'],
);
die "BUG: Can't generate func: $res->[0] - $res->[1]" unless $res->[0] == 200;

1;
# ABSTRACT: List banks/financial institutions in Indonesia

=head1 SYNOPSIS


=head1 DESCRIPTION

This module contains list of banks/financial institutions in Indonesia. Data
source is currently at: https://github.com/sharyanto/gudangdata
(table/idn_bank).


=head1 SEE ALSO

L<Business::BankList>

=cut
