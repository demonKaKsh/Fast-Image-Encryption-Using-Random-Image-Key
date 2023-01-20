function [c,cat]=imageCutter(OrgImg);
[rows,coloumns,maps]=size(OrgImg);
n=1;
c{1}=[0];
r{1}=OrgImg;
n=n+1;
if rows==coloumns
    c{2}=(OrgImg);
    cat{2}='no need';
end
if rows>coloumns
    for i=1:10000
        [remrow,remcoloumn,remmap]=size(r{n-1});
        if remrow==remcoloumn
            c{n}=r{n-1};
            break
        end
        if remrow>remcoloumn
            [c{n},r{n}]=rowsGreater(r{n-1});
            cat{n}=1;
            n=n+1;
        end
        if remcoloumn>remrow
            [c{n},r{n}]=coloumnGreater(r{n-1});
            cat{n}=0;
            n=n+1;
        end
    end
end
if coloumns>rows
    for i=1:500
        [remrow,remcoloumn,remmap]=size(r{n-1});
        if remrow==remcoloumn
            c{n}=r{n-1};
            break
        end
        if remrow>remcoloumn
            [c{n},r{n}]=rowsGreater(r{n-1});
            cat{n}=1;
            n=n+1;
        end
        if remcoloumn>remrow
            [c{n},r{n}]=coloumnGreater(r{n-1});
            cat{n}=0;
            n=n+1;
        end
    end
end
end