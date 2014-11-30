.class Lmobi/mgeek/TunnyBrowser/ir;
.super Ljava/lang/Object;
.source "WebsiteSettingsActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:I


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ir;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ir;->b:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->c:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->d:Landroid/graphics/Bitmap;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->e:I

    .line 82
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    const-string v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    move v2, v1

    move v3, v1

    .line 101
    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_1

    .line 102
    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/ir;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v3, v0

    .line 101
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 102
    goto :goto_1

    .line 104
    :cond_1
    return v3
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->e:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->e:I

    .line 86
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ir;->d:Landroid/graphics/Bitmap;

    .line 135
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ir;->c:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->e:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->e:I

    .line 90
    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 93
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/ir;->e:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 115
    move v0, v3

    move v4, v1

    .line 116
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 117
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ir;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v2, v4

    .line 118
    if-ne v2, p1, :cond_1

    .line 122
    :goto_2
    return v0

    :cond_0
    move v2, v3

    .line 117
    goto :goto_1

    .line 116
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 122
    goto :goto_2
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ir;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/ir;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ir;->c:Ljava/lang/String;

    goto :goto_0
.end method
