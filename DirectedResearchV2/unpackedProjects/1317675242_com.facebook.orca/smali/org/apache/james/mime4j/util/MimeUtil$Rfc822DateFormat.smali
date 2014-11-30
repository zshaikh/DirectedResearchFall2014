.class final Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;
.super Ljava/text/SimpleDateFormat;
.source "MimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 521
    const-string v0, "EEE, d MMM yyyy HH:mm:ss "

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 522
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    .prologue
    .line 527
    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 530
    iget-object v2, p0, Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 531
    add-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    .line 533
    if-gez v1, :cond_0

    .line 534
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 535
    neg-int v1, v1

    .line 540
    :goto_0
    const-string v2, "%02d%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    return-object v0

    .line 537
    :cond_0
    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
