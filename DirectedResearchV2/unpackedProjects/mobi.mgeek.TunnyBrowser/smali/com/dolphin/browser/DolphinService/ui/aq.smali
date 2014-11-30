.class public Lcom/dolphin/browser/DolphinService/ui/aq;
.super Ljava/lang/Object;
.source "DolphinServiceHelper.java"


# direct methods
.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 7
    .line 8
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 9
    const-string v0, "[10,10+)"

    .line 31
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10
    :cond_0
    const/16 v0, 0x2328

    if-lt p0, v0, :cond_1

    .line 11
    const-string v0, "[9,10)"

    goto :goto_0

    .line 12
    :cond_1
    const/16 v0, 0x1f40

    if-lt p0, v0, :cond_2

    .line 13
    const-string v0, "[8,9)"

    goto :goto_0

    .line 14
    :cond_2
    const/16 v0, 0x1b58

    if-lt p0, v0, :cond_3

    .line 15
    const-string v0, "[7,8)"

    goto :goto_0

    .line 16
    :cond_3
    const/16 v0, 0x1770

    if-lt p0, v0, :cond_4

    .line 17
    const-string v0, "[6,7)"

    goto :goto_0

    .line 18
    :cond_4
    const/16 v0, 0x1388

    if-lt p0, v0, :cond_5

    .line 19
    const-string v0, "[5,6)"

    goto :goto_0

    .line 20
    :cond_5
    const/16 v0, 0xfa0

    if-lt p0, v0, :cond_6

    .line 21
    const-string v0, "[4,5)"

    goto :goto_0

    .line 22
    :cond_6
    const/16 v0, 0xbb8

    if-lt p0, v0, :cond_7

    .line 23
    const-string v0, "[3,4)"

    goto :goto_0

    .line 24
    :cond_7
    const/16 v0, 0x7d0

    if-lt p0, v0, :cond_8

    .line 25
    const-string v0, "[2,3)"

    goto :goto_0

    .line 26
    :cond_8
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_9

    .line 27
    const-string v0, "[1,2)"

    goto :goto_0

    .line 29
    :cond_9
    const-string v0, "(0,1)"

    goto :goto_0
.end method
