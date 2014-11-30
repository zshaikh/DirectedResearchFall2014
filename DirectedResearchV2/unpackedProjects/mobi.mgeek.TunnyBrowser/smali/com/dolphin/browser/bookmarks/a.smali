.class public abstract Lcom/dolphin/browser/bookmarks/a;
.super Ljava/lang/Object;
.source "BookmarkImporter.java"


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:Landroid/content/Context;

.field protected c:I

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/content/pm/ProviderInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/dolphin/browser/bookmarks/a;->c:I

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmarks/a;->a:Landroid/content/ContentResolver;

    .line 23
    iput-object p1, p0, Lcom/dolphin/browser/bookmarks/a;->b:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmarks/a;->f:Landroid/content/pm/ProviderInfo;

    .line 26
    iput-object p2, p0, Lcom/dolphin/browser/bookmarks/a;->e:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/dolphin/browser/bookmarks/a;->d()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/dolphin/browser/bookmarks/a;->c:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmarks/a;->a:Landroid/content/ContentResolver;

    .line 32
    iput-object p1, p0, Lcom/dolphin/browser/bookmarks/a;->b:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmarks/a;->f:Landroid/content/pm/ProviderInfo;

    .line 35
    iput-object p2, p0, Lcom/dolphin/browser/bookmarks/a;->e:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/dolphin/browser/bookmarks/a;->d:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/dolphin/browser/bookmarks/a;->f:Landroid/content/pm/ProviderInfo;

    .line 78
    if-eqz v1, :cond_0

    .line 79
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    :try_start_0
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmarks/a;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract a(JJ)I
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/a;->f:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
