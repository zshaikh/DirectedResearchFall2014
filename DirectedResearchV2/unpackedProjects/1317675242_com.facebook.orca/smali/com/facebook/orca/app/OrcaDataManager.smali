.class public Lcom/facebook/orca/app/OrcaDataManager;
.super Ljava/lang/Object;
.source "OrcaDataManager.java"


# instance fields
.field private final a:Lcom/facebook/orca/auth/AuthenticationManager;

.field private final b:Lcom/facebook/orca/images/ImageCache;

.field private final c:Lcom/facebook/orca/common/http/OrcaHttpClient;

.field private final d:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

.field private final e:Lcom/facebook/orca/cache/ThreadsCache;

.field private final f:Lcom/facebook/orca/database/UsersDatabaseSupplier;

.field private final g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final h:Lcom/facebook/orca/prefs/UiCounters;

.field private i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/common/http/OrcaHttpClient;Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/UiCounters;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaDataManager;->a:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 50
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Lcom/facebook/orca/images/ImageCache;

    .line 51
    iput-object p3, p0, Lcom/facebook/orca/app/OrcaDataManager;->c:Lcom/facebook/orca/common/http/OrcaHttpClient;

    .line 52
    iput-object p4, p0, Lcom/facebook/orca/app/OrcaDataManager;->d:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    .line 53
    iput-object p5, p0, Lcom/facebook/orca/app/OrcaDataManager;->e:Lcom/facebook/orca/cache/ThreadsCache;

    .line 54
    iput-object p6, p0, Lcom/facebook/orca/app/OrcaDataManager;->f:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    .line 55
    iput-object p7, p0, Lcom/facebook/orca/app/OrcaDataManager;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 56
    iput-object p8, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/prefs/UiCounters;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/OrcaDataManager;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->E:Lcom/facebook/orca/prefs/PrefKey;

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 123
    :goto_0
    if-eq v0, v3, :cond_0

    .line 124
    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->a(I)V

    .line 128
    :goto_1
    return-void

    .line 120
    :catch_0
    move-exception v0

    move v0, v3

    .line 121
    goto :goto_0

    .line 126
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->a(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->b()V

    .line 92
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->e()V

    .line 93
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 60
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaDataManager;->j:Landroid/content/Context;

    .line 62
    const/high16 v0, 0x7f050000

    invoke-static {p1, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 63
    const v0, 0x7f050001

    invoke-static {p1, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 64
    const v0, 0x7f050002

    invoke-static {p1, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v0

    .line 68
    if-ge v0, v3, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->a:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->e()V

    .line 70
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->b()V

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)V

    .line 73
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->f()V

    .line 78
    new-instance v0, Lcom/facebook/orca/app/OrcaDataManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/app/OrcaDataManager$1;-><init>(Lcom/facebook/orca/app/OrcaDataManager;)V

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 88
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->c()V

    .line 97
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->d()V

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0}, Lcom/facebook/orca/images/ImageCache;->b()V

    .line 99
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->d:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->b()V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->e:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->e()V

    .line 104
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->f:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->b()V

    .line 108
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()V

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->a:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->e()V

    .line 113
    return-void
.end method
