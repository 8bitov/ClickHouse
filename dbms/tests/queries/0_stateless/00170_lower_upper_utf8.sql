select lower('aaaaaaaaaaaaaaa012345789,.!aaaa' as str) = str;
select lowerUTF8('aaaaaaaaaaaaaaa012345789,.!aaaa' as str) = str;
select lower('AaAaAaAaAaAaAaA012345789,.!aAaA') = 'aaaaaaaaaaaaaaa012345789,.!aaaa';
select lowerUTF8('AaAaAaAaAaAaAaA012345789,.!aAaA') = 'aaaaaaaaaaaaaaa012345789,.!aaaa';

select upper('AAAAAAAAAAAAAAA012345789,.!AAAA' as str) = str;
select upperUTF8('AAAAAAAAAAAAAAA012345789,.!AAAA' as str) = str;
select upper('AaAaAaAaAaAaAaA012345789,.!aAaA') = 'AAAAAAAAAAAAAAA012345789,.!AAAA';
select upperUTF8('AaAaAaAaAaAaAaA012345789,.!aAaA') = 'AAAAAAAAAAAAAAA012345789,.!AAAA';

select sum(lower(materialize('aaaaaaaaaaaaaaa012345789,.!aaaa') as str) = str) = count() array join range(16384) as n;
select sum(lowerUTF8(materialize('aaaaaaaaaaaaaaa012345789,.!aaaa') as str) = str) = count() array join range(16384) as n;
select sum(lower(materialize('AaAaAaAaAaAaAaA012345789,.!aAaA')) = materialize('aaaaaaaaaaaaaaa012345789,.!aaaa')) = count() array join range(16384) as n;
select sum(lowerUTF8(materialize('AaAaAaAaAaAaAaA012345789,.!aAaA')) = materialize('aaaaaaaaaaaaaaa012345789,.!aaaa')) = count() array join range(16384) as n;

select sum(upper(materialize('AAAAAAAAAAAAAAA012345789,.!AAAA') as str) = str) = count() array join range(16384) as n;
select sum(upperUTF8(materialize('AAAAAAAAAAAAAAA012345789,.!AAAA') as str) = str) = count() array join range(16384) as n;
select sum(upper(materialize('AaAaAaAaAaAaAaA012345789,.!aAaA')) = materialize('AAAAAAAAAAAAAAA012345789,.!AAAA')) = count() array join range(16384) as n;
select sum(upperUTF8(materialize('AaAaAaAaAaAaAaA012345789,.!aAaA')) = materialize('AAAAAAAAAAAAAAA012345789,.!AAAA')) = count() array join range(16384) as n;

select lower('aaaaАБВГAAAAaaAA') = 'aaaaАБВГaaaaaaaa';
select upper('aaaaАБВГAAAAaaAA') = 'AAAAАБВГAAAAAAAA';
select lowerUTF8('aaaaАБВГAAAAaaAA') = 'aaaaабвгaaaaaaaa';
select upperUTF8('aaaaАБВГAAAAaaAA') = 'AAAAАБВГAAAAAAAA';

select sum(lower(materialize('aaaaАБВГAAAAaaAA')) = materialize('aaaaАБВГaaaaaaaa')) = count() array join range(16384) as n;
select sum(upper(materialize('aaaaАБВГAAAAaaAA')) = materialize('AAAAАБВГAAAAAAAA')) = count() array join range(16384) as n;
select sum(lowerUTF8(materialize('aaaaАБВГAAAAaaAA')) = materialize('aaaaабвгaaaaaaaa')) = count() array join range(16384) as n;
select sum(upperUTF8(materialize('aaaaАБВГAAAAaaAA')) = materialize('AAAAАБВГAAAAAAAA')) = count() array join range(16384) as n;
