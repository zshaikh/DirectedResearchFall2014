.class public Lcom/dolphin/browser/util/dp;
.super Ljava/lang/Object;
.source "UrlFormatUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "www."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "m."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3g."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "moble."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wap."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "web."

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/util/dp;->a:[Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;IIII)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/16 v3, 0x21

    const/4 v2, 0x0

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-object p0

    .line 36
    :cond_0
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    const-string v1, "http://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v6, v0

    .line 47
    :goto_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    sget-object v1, Lcom/dolphin/browser/util/dp;->a:[Ljava/lang/String;

    array-length v5, v1

    move v4, v2

    .line 50
    :goto_2
    if-ge v4, v5, :cond_5

    .line 51
    sget-object v1, Lcom/dolphin/browser/util/dp;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 52
    if-ne v1, v6, :cond_4

    .line 53
    sget-object v2, Lcom/dolphin/browser/util/dp;->a:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    move v4, p1

    move v5, p2

    .line 54
    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/util/dp;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    move v7, v2

    .line 59
    :goto_3
    const-string v1, "/"

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 60
    if-lez v1, :cond_1

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/util/dp;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 63
    if-lez v7, :cond_1

    move-object v4, v0

    move v5, v7

    move v6, v1

    move v7, v3

    move v8, p3

    move v9, p4

    .line 64
    invoke-static/range {v4 .. v9}, Lcom/dolphin/browser/util/dp;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    :cond_1
    move-object p0, v0

    .line 68
    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 41
    if-lez v0, :cond_3

    .line 42
    add-int/lit8 v0, v0, 0x3

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, v2

    .line 44
    goto :goto_1

    .line 50
    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_5
    move v7, v2

    goto :goto_3
.end method

.method private static a(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, p5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 75
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    if-lez p4, :cond_0

    .line 77
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 78
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 80
    :cond_0
    return-void
.end method
