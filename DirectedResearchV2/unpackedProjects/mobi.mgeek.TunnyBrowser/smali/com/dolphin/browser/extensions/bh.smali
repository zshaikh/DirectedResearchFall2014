.class public Lcom/dolphin/browser/extensions/bh;
.super Lcom/dolphin/browser/util/BaseObservable;
.source "ShareAddons.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/BaseObservable",
        "<",
        "Lcom/dolphin/browser/util/an;",
        ">;"
    }
.end annotation


# static fields
.field private static f:Lcom/dolphin/browser/extensions/bh;

.field private static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/dolphin/browser/extensions/n;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;

.field private d:[Lcom/dolphin/browser/extensions/n;

.field private e:Landroid/os/Handler;

.field private final h:Lcom/dolphin/browser/extensions/p;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/dolphin/browser/extensions/bi;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/bi;-><init>()V

    sput-object v0, Lcom/dolphin/browser/extensions/bh;->g:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dolphin/browser/util/BaseObservable;-><init>()V

    .line 93
    new-instance v0, Lcom/dolphin/browser/extensions/bj;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/bj;-><init>(Lcom/dolphin/browser/extensions/bh;)V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/bh;->h:Lcom/dolphin/browser/extensions/p;

    .line 214
    new-instance v0, Lcom/dolphin/browser/extensions/bk;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/bk;-><init>(Lcom/dolphin/browser/extensions/bh;)V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/bh;->i:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bh;->c:Landroid/content/Context;

    .line 48
    const-string v0, "share_addons"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/bh;->b:Landroid/content/SharedPreferences;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/bh;->e:Landroid/os/Handler;

    .line 50
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bh;->h:Lcom/dolphin/browser/extensions/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/p;)V

    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/bh;->c()V

    .line 52
    return-void
.end method

.method public static a(Lcom/dolphin/browser/extensions/n;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    if-eqz p0, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IShareExtension;

    .line 112
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IShareExtension;->getIcon()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/extensions/n;Landroid/content/Context;Lcom/dolphin/browser/extensions/ShareDataProvider;Z)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    if-eqz p0, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IShareExtension;

    .line 152
    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/extensions/IShareExtension;->onCreateFragment(Landroid/content/Context;Lcom/dolphin/browser/extensions/ShareDataProvider;Z)Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/dolphin/browser/extensions/bh;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/extensions/bh;->f:Lcom/dolphin/browser/extensions/bh;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/dolphin/browser/extensions/bh;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/bh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/extensions/bh;->f:Lcom/dolphin/browser/extensions/bh;

    .line 39
    :cond_0
    sget-object v0, Lcom/dolphin/browser/extensions/bh;->f:Lcom/dolphin/browser/extensions/bh;

    return-object v0
.end method

.method private a(J)V
    .locals 2

    .prologue
    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bh;->e:Landroid/os/Handler;

    .line 224
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bh;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bh;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/bh;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/bh;->c()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/bh;J)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/extensions/bh;->a(J)V

    return-void
.end method

.method public static a(Lcom/dolphin/browser/extensions/n;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    if-eqz p0, :cond_0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IShareExtension;

    .line 165
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IShareExtension;->prePostMessage(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 170
    :goto_0
    return v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/dolphin/browser/extensions/n;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    if-eqz p0, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IShareExtension;

    .line 125
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IShareExtension;->getTitle()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/dolphin/browser/extensions/n;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 175
    if-eqz p0, :cond_0

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IShareExtension;

    .line 178
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IShareExtension;->onPostMessagge(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 183
    :goto_0
    return v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static c(Lcom/dolphin/browser/extensions/n;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    if-eqz p0, :cond_0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IShareExtension;

    .line 138
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IShareExtension;->getPostButtonText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bh;->b:Landroid/content/SharedPreferences;

    const-string v1, "current_extension_package"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bh;->b:Landroid/content/SharedPreferences;

    const-string v1, "current_extension_class"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/extensions/IShareExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/dolphin/browser/extensions/n;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/extensions/n;

    .line 59
    sget-object v1, Lcom/dolphin/browser/extensions/bh;->g:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 60
    iput-object v5, p0, Lcom/dolphin/browser/extensions/bh;->a:Lcom/dolphin/browser/extensions/n;

    .line 61
    array-length v5, v0

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v0, v1

    .line 62
    invoke-virtual {v6}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 64
    iput-object v6, p0, Lcom/dolphin/browser/extensions/bh;->a:Lcom/dolphin/browser/extensions/n;

    .line 61
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bh;->a:Lcom/dolphin/browser/extensions/n;

    if-nez v1, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 68
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/dolphin/browser/extensions/bh;->a:Lcom/dolphin/browser/extensions/n;

    .line 70
    :cond_2
    iput-object v0, p0, Lcom/dolphin/browser/extensions/bh;->d:[Lcom/dolphin/browser/extensions/n;

    .line 71
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/bh;->d()V

    .line 72
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/bh;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/util/an;

    .line 78
    invoke-interface {v0}, Lcom/dolphin/browser/util/an;->a()V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method private f(Lcom/dolphin/browser/extensions/n;)V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bh;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    const-string v1, "current_extension_package"

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    const-string v1, "current_extension_class"

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 208
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/extensions/n;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bh;->a:Lcom/dolphin/browser/extensions/n;

    return-object v0
.end method

.method public b()[Lcom/dolphin/browser/extensions/n;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bh;->d:[Lcom/dolphin/browser/extensions/n;

    return-object v0
.end method

.method public d(Lcom/dolphin/browser/extensions/n;)Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bh;->a:Lcom/dolphin/browser/extensions/n;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lcom/dolphin/browser/extensions/n;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bh;->a:Lcom/dolphin/browser/extensions/n;

    .line 196
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/bh;->f(Lcom/dolphin/browser/extensions/n;)V

    .line 197
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/bh;->d()V

    .line 198
    return-void
.end method
