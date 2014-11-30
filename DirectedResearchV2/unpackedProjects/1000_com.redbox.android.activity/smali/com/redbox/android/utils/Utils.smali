.class public Lcom/redbox/android/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final GENRE_ID_ALL:Ljava/lang/String; = "0"

.field public static final GENRE_ID_GAME:Ljava/lang/String; = "1021"

.field private static final STRING_ARRAY_INDEX_ACTION_AND_ADVENTURE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGenreId(I)Ljava/lang/String;
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 30
    packed-switch p0, :pswitch_data_0

    .line 56
    const-string v0, ""

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 34
    :pswitch_1
    const-string v0, "1000"

    goto :goto_0

    .line 36
    :pswitch_2
    const-string v0, "1022"

    goto :goto_0

    .line 38
    :pswitch_3
    const-string v0, "1004"

    goto :goto_0

    .line 40
    :pswitch_4
    const-string v0, "1005"

    goto :goto_0

    .line 42
    :pswitch_5
    const-string v0, "1006"

    goto :goto_0

    .line 44
    :pswitch_6
    const-string v0, "1009"

    goto :goto_0

    .line 46
    :pswitch_7
    const-string v0, "1020"

    goto :goto_0

    .line 48
    :pswitch_8
    const-string v0, "1010"

    goto :goto_0

    .line 50
    :pswitch_9
    const-string v0, "1012"

    goto :goto_0

    .line 52
    :pswitch_a
    const-string v0, "1013"

    goto :goto_0

    .line 54
    :pswitch_b
    const-string v0, "1016"

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static subtractDate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "days"    # I

    .prologue
    .line 66
    const-class v6, Lcom/redbox/android/utils/Utils;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Subtracting: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "df":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 71
    .local v2, "d":Ljava/util/Date;
    const-string v0, "yyyyMMdd"

    .line 72
    .local v0, "DATE_FORMAT":Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 74
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 75
    .local v1, "cl":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    const/4 v6, 0x5

    neg-int v7, p1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 79
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 83
    .end local v0    # "DATE_FORMAT":Ljava/lang/String;
    .end local v1    # "cl":Ljava/util/Calendar;
    .end local v2    # "d":Ljava/util/Date;
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v6

    .line 80
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 81
    .local v4, "e":Ljava/text/ParseException;
    const-class v6, Lcom/redbox/android/utils/Utils;

    const-string v7, "Problem parsing date"

    invoke-static {v6, v7}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string v6, ""

    goto :goto_0
.end method

.method public static todaysDateMinus250Days()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 62
    .local v0, "cl":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xfa

    invoke-static {v2, v3}, Lcom/redbox/android/utils/Utils;->subtractDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
