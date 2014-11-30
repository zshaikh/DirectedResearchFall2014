.class public Lcom/dolphin/browser/bookmark/by;
.super Lcom/dolphin/browser/u/a;
.source "DeviceAdapter.java"


# static fields
.field protected static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "deviceid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "device_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "-9 AS folder"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1 AS is_folder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/bookmark/by;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/dolphin/browser/u/a;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected a()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 39
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->OTHER_DEVICES_URI:Landroid/net/Uri;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/dolphin/browser/bookmark/by;->a:[Ljava/lang/String;

    .line 42
    const-string v5, "_id DESC"

    .line 43
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/by;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method protected a(Lcom/dolphin/browser/bookmark/b/h;Landroid/database/Cursor;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/by;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e065d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    rsub-int/lit8 v1, v1, -0xd

    int-to-long v1, v1

    .line 55
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/h;->a(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1, v1, v2}, Lcom/dolphin/browser/bookmark/b/h;->a(J)V

    .line 57
    invoke-virtual {p1, v3}, Lcom/dolphin/browser/bookmark/b/h;->d(Z)V

    .line 59
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/h;->b(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02019e

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/h;->a(I)V

    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/b/h;->a()V

    .line 72
    return-void

    .line 65
    :cond_1
    if-ne v4, v0, :cond_2

    .line 66
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020197

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/h;->a(I)V

    goto :goto_0

    .line 68
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02019b

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/h;->a(I)V

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Lcom/dolphin/browser/bookmark/b/h;

    invoke-virtual {p0, p1, p3}, Lcom/dolphin/browser/bookmark/by;->a(Lcom/dolphin/browser/bookmark/b/h;Landroid/database/Cursor;)V

    .line 77
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/dolphin/browser/bookmark/b/h;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/bookmark/b/h;-><init>(Landroid/content/Context;)V

    .line 86
    return-object v0
.end method
