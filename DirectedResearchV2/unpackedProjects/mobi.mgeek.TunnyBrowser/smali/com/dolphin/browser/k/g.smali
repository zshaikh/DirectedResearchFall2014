.class public Lcom/dolphin/browser/k/g;
.super Ljava/util/Observable;
.source "MenuBarStateObservable.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:[Lcom/dolphin/browser/k/h;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dolphin/browser/k/h;

    const/4 v1, 0x0

    sget-object v2, Lcom/dolphin/browser/k/h;->a:Lcom/dolphin/browser/k/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dolphin/browser/k/h;->a:Lcom/dolphin/browser/k/h;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/k/h;->a:Lcom/dolphin/browser/k/h;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/k/h;->a:Lcom/dolphin/browser/k/h;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/dolphin/browser/k/h;->a:Lcom/dolphin/browser/k/h;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/dolphin/browser/k/h;->a:Lcom/dolphin/browser/k/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dolphin/browser/k/h;->a:Lcom/dolphin/browser/k/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dolphin/browser/k/h;->a:Lcom/dolphin/browser/k/h;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/dolphin/browser/k/g;->a:[Lcom/dolphin/browser/k/h;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/k/g;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private a(ILcom/dolphin/browser/k/h;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/k/g;->a:[Lcom/dolphin/browser/k/h;

    aget-object v0, v0, p1

    if-eq v0, p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/k/g;->a:[Lcom/dolphin/browser/k/h;

    aput-object p2, v0, p1

    .line 107
    invoke-virtual {p0}, Lcom/dolphin/browser/k/g;->setChanged()V

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/g;->notifyObservers(Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method

.method private b(I)Lcom/dolphin/browser/k/h;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/k/g;->a:[Lcom/dolphin/browser/k/h;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private static g(Z)Lcom/dolphin/browser/k/h;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/dolphin/browser/k/h;->c:Lcom/dolphin/browser/k/h;

    .line 27
    if-eqz p0, :cond_0

    .line 28
    sget-object v0, Lcom/dolphin/browser/k/h;->b:Lcom/dolphin/browser/k/h;

    .line 30
    :cond_0
    return-object v0
.end method

.method private static h(Z)Lcom/dolphin/browser/k/h;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/dolphin/browser/k/h;->e:Lcom/dolphin/browser/k/h;

    .line 36
    if-eqz p0, :cond_0

    .line 37
    sget-object v0, Lcom/dolphin/browser/k/h;->d:Lcom/dolphin/browser/k/h;

    .line 39
    :cond_0
    return-object v0
.end method

.method private i(Z)V
    .locals 2

    .prologue
    .line 199
    const/4 v1, 0x4

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/dolphin/browser/k/g;->g(Z)Lcom/dolphin/browser/k/h;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/k/g;->a(ILcom/dolphin/browser/k/h;)V

    .line 200
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/dolphin/browser/k/h;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/dolphin/browser/k/h;->a:Lcom/dolphin/browser/k/h;

    .line 94
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/k/g;->a:[Lcom/dolphin/browser/k/h;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/dolphin/browser/k/g;->b(I)Lcom/dolphin/browser/k/h;

    move-result-object v0

    .line 97
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/k/g;->a(Z)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/k/g;->b(Z)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/k/g;->c(Z)V

    .line 61
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/k/g;->d(Z)V

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/k/g;->a:[Lcom/dolphin/browser/k/h;

    const/4 v1, 0x3

    sget-object v4, Lcom/dolphin/browser/k/h;->b:Lcom/dolphin/browser/k/h;

    aput-object v4, v0, v1

    .line 65
    const-string v0, ""

    .line 66
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 73
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/e;

    .line 76
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z()Z

    move-result v4

    .line 77
    if-nez v4, :cond_0

    .line 78
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 85
    :goto_1
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/k/e;->addObserver(Ljava/util/Observer;)V

    .line 86
    invoke-direct {p0, v1}, Lcom/dolphin/browser/k/g;->i(Z)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/k/g;->e(Z)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/k/g;->f(Z)V

    .line 89
    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/k/e;->b()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/k/h;)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/k/g;->a(ILcom/dolphin/browser/k/h;)V

    .line 114
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/k/g;->b:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 188
    iput-object p1, p0, Lcom/dolphin/browser/k/g;->b:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/dolphin/browser/k/g;->setChanged()V

    .line 190
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/g;->notifyObservers(Ljava/lang/Object;)V

    .line 192
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 117
    invoke-static {p1}, Lcom/dolphin/browser/k/g;->g(Z)Lcom/dolphin/browser/k/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/g;->a(Lcom/dolphin/browser/k/h;)V

    .line 118
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/k/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/k/h;)V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/k/g;->a(ILcom/dolphin/browser/k/h;)V

    .line 126
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 129
    invoke-static {p1}, Lcom/dolphin/browser/k/g;->g(Z)Lcom/dolphin/browser/k/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/g;->b(Lcom/dolphin/browser/k/h;)V

    .line 130
    return-void
.end method

.method public c(Lcom/dolphin/browser/k/h;)V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/k/g;->a(ILcom/dolphin/browser/k/h;)V

    .line 148
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/dolphin/browser/ui/a/c;->a:Lcom/dolphin/browser/ui/a/c;

    if-ne v1, v0, :cond_0

    .line 137
    const/4 p1, 0x1

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/k/g;->h(Z)Lcom/dolphin/browser/k/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/g;->b(Lcom/dolphin/browser/k/h;)V

    .line 140
    return-void
.end method

.method public d(Lcom/dolphin/browser/k/h;)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/k/g;->a(ILcom/dolphin/browser/k/h;)V

    .line 164
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 151
    invoke-static {p1}, Lcom/dolphin/browser/k/g;->h(Z)Lcom/dolphin/browser/k/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/g;->c(Lcom/dolphin/browser/k/h;)V

    .line 152
    return-void
.end method

.method public e(Lcom/dolphin/browser/k/h;)V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/k/g;->a(ILcom/dolphin/browser/k/h;)V

    .line 176
    return-void
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 167
    invoke-static {p1}, Lcom/dolphin/browser/k/g;->h(Z)Lcom/dolphin/browser/k/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/g;->d(Lcom/dolphin/browser/k/h;)V

    .line 168
    return-void
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 179
    invoke-static {p1}, Lcom/dolphin/browser/k/g;->h(Z)Lcom/dolphin/browser/k/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/k/g;->e(Lcom/dolphin/browser/k/h;)V

    .line 180
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 204
    instance-of v0, p1, Lcom/dolphin/browser/k/e;

    if-eqz v0, :cond_0

    .line 205
    check-cast p1, Lcom/dolphin/browser/k/e;

    invoke-virtual {p1}, Lcom/dolphin/browser/k/e;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/k/g;->i(Z)V

    .line 210
    :cond_0
    return-void
.end method
