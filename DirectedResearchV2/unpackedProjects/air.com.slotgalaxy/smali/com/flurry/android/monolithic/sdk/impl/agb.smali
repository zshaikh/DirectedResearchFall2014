.class public final Lcom/flurry/android/monolithic/sdk/impl/agb;
.super Lcom/flurry/android/monolithic/sdk/impl/pi;
.source "SourceFile"


# instance fields
.field protected d:Lcom/flurry/android/monolithic/sdk/impl/pc;

.field protected e:Lcom/flurry/android/monolithic/sdk/impl/agc;

.field protected f:I

.field protected g:Lcom/flurry/android/monolithic/sdk/impl/pk;

.field protected h:Z

.field protected transient i:Lcom/flurry/android/monolithic/sdk/impl/afq;

.field protected j:Lcom/flurry/android/monolithic/sdk/impl/ot;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/agc;Lcom/flurry/android/monolithic/sdk/impl/pc;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 796
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/pi;-><init>(I)V

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->j:Lcom/flurry/android/monolithic/sdk/impl/ot;

    .line 797
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->e:Lcom/flurry/android/monolithic/sdk/impl/agc;

    .line 798
    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->f:I

    .line 799
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->d:Lcom/flurry/android/monolithic/sdk/impl/pc;

    .line 800
    invoke-static {v1, v1}, Lcom/flurry/android/monolithic/sdk/impl/pk;->a(II)Lcom/flurry/android/monolithic/sdk/impl/pk;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->g:Lcom/flurry/android/monolithic/sdk/impl/pk;

    .line 801
    return-void
.end method


# virtual methods
.method protected final A()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->e:Lcom/flurry/android/monolithic/sdk/impl/agc;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->f:I

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/agc;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final B()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pb;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ov;

    move-result-object v0

    throw v0

    .line 1104
    :cond_1
    return-void
.end method

.method protected H()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->U()V

    .line 1109
    return-void
.end method

.method public a()Lcom/flurry/android/monolithic/sdk/impl/pc;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->d:Lcom/flurry/android/monolithic/sdk/impl/pc;

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ot;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->j:Lcom/flurry/android/monolithic/sdk/impl/ot;

    .line 805
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/on;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->g:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v1, v2, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->A()Ljava/lang/Object;

    move-result-object v1

    .line 1067
    instance-of v2, v1, [B

    if-eqz v2, :cond_0

    .line 1068
    move-object v0, v1

    check-cast v0, [B

    move-object p0, v0

    check-cast p0, [B

    move-object v1, p0

    .line 1086
    :goto_0
    return-object v1

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v1, v2, :cond_1

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/agb;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ov;

    move-result-object v1

    throw v1

    .line 1075
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->k()Ljava/lang/String;

    move-result-object v1

    .line 1076
    if-nez v1, :cond_2

    .line 1077
    const/4 v1, 0x0

    goto :goto_0

    .line 1079
    :cond_2
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->i:Lcom/flurry/android/monolithic/sdk/impl/afq;

    .line 1080
    if-nez v2, :cond_3

    .line 1081
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/afq;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/afq;-><init>(I)V

    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->i:Lcom/flurry/android/monolithic/sdk/impl/afq;

    .line 1085
    :goto_1
    invoke-virtual {p0, v1, v2, p1}, Lcom/flurry/android/monolithic/sdk/impl/agb;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afq;Lcom/flurry/android/monolithic/sdk/impl/on;)V

    .line 1086
    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/afq;->b()[B

    move-result-object v1

    goto :goto_0

    .line 1083
    :cond_3
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->i:Lcom/flurry/android/monolithic/sdk/impl/afq;

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/afq;->a()V

    goto :goto_1
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/pb;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 856
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->e:Lcom/flurry/android/monolithic/sdk/impl/agc;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 885
    :goto_0
    return-object v0

    .line 859
    :cond_1
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->f:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 860
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->f:I

    .line 861
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->e:Lcom/flurry/android/monolithic/sdk/impl/agc;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/agc;->a()Lcom/flurry/android/monolithic/sdk/impl/agc;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->e:Lcom/flurry/android/monolithic/sdk/impl/agc;

    .line 862
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->e:Lcom/flurry/android/monolithic/sdk/impl/agc;

    if-nez v0, :cond_2

    move-object v0, v3

    .line 863
    goto :goto_0

    .line 866
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->e:Lcom/flurry/android/monolithic/sdk/impl/agc;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->f:I

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/agc;->a(I)Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 868
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_5

    .line 869
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->A()Ljava/lang/Object;

    move-result-object v0

    .line 870
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/String;

    .line 871
    :goto_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->g:Lcom/flurry/android/monolithic/sdk/impl/pk;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/pk;->a(Ljava/lang/String;)V

    .line 885
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    goto :goto_0

    .line 870
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 872
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_6

    .line 873
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->g:Lcom/flurry/android/monolithic/sdk/impl/pk;

    invoke-virtual {v0, v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/pk;->c(II)Lcom/flurry/android/monolithic/sdk/impl/pk;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->g:Lcom/flurry/android/monolithic/sdk/impl/pk;

    goto :goto_2

    .line 874
    :cond_6
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->d:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_7

    .line 875
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->g:Lcom/flurry/android/monolithic/sdk/impl/pk;

    invoke-virtual {v0, v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/pk;->b(II)Lcom/flurry/android/monolithic/sdk/impl/pk;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->g:Lcom/flurry/android/monolithic/sdk/impl/pk;

    goto :goto_2

    .line 876
    :cond_7
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->c:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_3

    .line 879
    :cond_8
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->g:Lcom/flurry/android/monolithic/sdk/impl/pk;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pk;->i()Lcom/flurry/android/monolithic/sdk/impl/pk;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->g:Lcom/flurry/android/monolithic/sdk/impl/pk;

    .line 881
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->g:Lcom/flurry/android/monolithic/sdk/impl/pk;

    if-nez v0, :cond_3

    .line 882
    invoke-static {v2, v2}, Lcom/flurry/android/monolithic/sdk/impl/pk;->a(II)Lcom/flurry/android/monolithic/sdk/impl/pk;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->g:Lcom/flurry/android/monolithic/sdk/impl/pk;

    goto :goto_2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->h:Z

    if-nez v0, :cond_0

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->h:Z

    .line 844
    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->g:Lcom/flurry/android/monolithic/sdk/impl/pk;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pk;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/flurry/android/monolithic/sdk/impl/ot;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->i()Lcom/flurry/android/monolithic/sdk/impl/ot;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/flurry/android/monolithic/sdk/impl/ot;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->j:Lcom/flurry/android/monolithic/sdk/impl/ot;

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ot;->a:Lcom/flurry/android/monolithic/sdk/impl/ot;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->j:Lcom/flurry/android/monolithic/sdk/impl/ot;

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 921
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_3

    .line 923
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->A()Ljava/lang/Object;

    move-result-object p0

    .line 924
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 925
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 938
    :goto_0
    return-object v0

    .line 927
    :cond_1
    if-nez p0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 929
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-nez v0, :cond_4

    move-object v0, v2

    .line 930
    goto :goto_0

    .line 932
    :cond_4
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/aga;->a:[I

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 938
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pb;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 935
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->A()Ljava/lang/Object;

    move-result-object v0

    .line 936
    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public l()[C
    .locals 1

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->k()Ljava/lang/String;

    move-result-object v0

    .line 944
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->k()Ljava/lang/String;

    move-result-object v0

    .line 950
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Ljava/lang/Number;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->B()V

    .line 1042
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->A()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public q()Lcom/flurry/android/monolithic/sdk/impl/oy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->p()Ljava/lang/Number;

    move-result-object v0

    .line 1030
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->a:Lcom/flurry/android/monolithic/sdk/impl/oy;

    .line 1036
    :goto_0
    return-object v0

    .line 1031
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->b:Lcom/flurry/android/monolithic/sdk/impl/oy;

    goto :goto_0

    .line 1032
    :cond_1
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->e:Lcom/flurry/android/monolithic/sdk/impl/oy;

    goto :goto_0

    .line 1033
    :cond_2
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->f:Lcom/flurry/android/monolithic/sdk/impl/oy;

    goto :goto_0

    .line 1034
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->d:Lcom/flurry/android/monolithic/sdk/impl/oy;

    goto :goto_0

    .line 1035
    :cond_4
    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->c:Lcom/flurry/android/monolithic/sdk/impl/oy;

    goto :goto_0

    .line 1036
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->A()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1018
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->p()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public u()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->p()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public v()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->p()Ljava/lang/Number;

    move-result-object v1

    .line 972
    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    .line 973
    move-object v0, v1

    check-cast v0, Ljava/math/BigInteger;

    move-object p0, v0

    move-object v1, p0

    .line 980
    :goto_0
    return-object v1

    .line 975
    :cond_0
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/aga;->b:[I

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->q()Lcom/flurry/android/monolithic/sdk/impl/oy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/oy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 980
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 977
    :pswitch_0
    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public w()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->p()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public x()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->p()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public y()Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->p()Ljava/lang/Number;

    move-result-object v1

    .line 987
    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_0

    .line 988
    move-object v0, v1

    check-cast v0, Ljava/math/BigDecimal;

    move-object p0, v0

    move-object v1, p0

    .line 998
    :goto_0
    return-object v1

    .line 990
    :cond_0
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/aga;->b:[I

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->q()Lcom/flurry/android/monolithic/sdk/impl/oy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/oy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 998
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0

    .line 993
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0

    .line 995
    :pswitch_2
    new-instance v2, Ljava/math/BigDecimal;

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object v1, v2

    goto :goto_0

    .line 990
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public z()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->g:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/agb;->A()Ljava/lang/Object;

    move-result-object v0

    .line 1057
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
