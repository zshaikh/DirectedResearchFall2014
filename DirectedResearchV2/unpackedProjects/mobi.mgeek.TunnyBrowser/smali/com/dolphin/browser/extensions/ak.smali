.class public Lcom/dolphin/browser/extensions/ak;
.super Lcom/dolphin/browser/extensions/a;
.source "OldAddon.java"


# static fields
.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    :try_start_0
    const-string v0, "mobi.mgeek.TunnyBrowser.extensions.IExtension"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-string v1, "refreshConfig"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/extensions/ak;->j:Ljava/lang/reflect/Method;

    .line 46
    sget-object v1, Lcom/dolphin/browser/extensions/ak;->j:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 47
    const-string v1, "wantToShowInAddonBar"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/extensions/ak;->k:Ljava/lang/reflect/Method;

    .line 48
    sget-object v1, Lcom/dolphin/browser/extensions/ak;->k:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    const-string v1, "getAddonBarIcon"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/extensions/ak;->l:Ljava/lang/reflect/Method;

    .line 50
    sget-object v1, Lcom/dolphin/browser/extensions/ak;->l:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 51
    const-string v1, "onEnable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/extensions/ak;->m:Ljava/lang/reflect/Method;

    .line 52
    sget-object v1, Lcom/dolphin/browser/extensions/ak;->m:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 53
    const-string v1, "onDisable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/extensions/ak;->n:Ljava/lang/reflect/Method;

    .line 54
    sget-object v1, Lcom/dolphin/browser/extensions/ak;->n:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 55
    const-string v1, "onCreateHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/ak;->o:Ljava/lang/reflect/Method;

    .line 56
    sget-object v0, Lcom/dolphin/browser/extensions/ak;->o:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/extensions/a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 68
    return-void
.end method

.method public static a(Lcom/dolphin/browser/extensions/n;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 131
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/extensions/ak;->l:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/extensions/a;->q()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/dolphin/browser/extensions/c;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 71
    sget-object v0, Lcom/dolphin/browser/extensions/c;->d:Lcom/dolphin/browser/extensions/c;

    .line 73
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    const-string v1, "addon_min_version"

    const-string v3, "string"

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 75
    const/4 v1, 0x1

    .line 76
    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 79
    :cond_0
    if-lt v4, v1, :cond_3

    .line 80
    const-string v1, "addon_max_version"

    const-string v3, "string"

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 81
    const v1, 0x7fffffff

    .line 82
    if-eqz v3, :cond_1

    .line 83
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 85
    :cond_1
    if-gt v4, v1, :cond_2

    .line 86
    sget-object v0, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    .line 95
    :goto_0
    return-object v0

    .line 88
    :cond_2
    sget-object v0, Lcom/dolphin/browser/extensions/c;->b:Lcom/dolphin/browser/extensions/c;

    goto :goto_0

    .line 91
    :cond_3
    sget-object v0, Lcom/dolphin/browser/extensions/c;->c:Lcom/dolphin/browser/extensions/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Lcom/dolphin/browser/extensions/n;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 142
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/extensions/ak;->k:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dolphin/browser/extensions/a;->q()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 148
    :goto_0
    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move v0, v1

    .line 148
    goto :goto_0
.end method


# virtual methods
.method protected c()V
    .locals 6

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 101
    sget-object v0, Lcom/dolphin/browser/extensions/c;->d:Lcom/dolphin/browser/extensions/c;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/ak;->b:Lcom/dolphin/browser/extensions/c;

    .line 102
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ak;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ak;->o()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/extensions/ak;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/dolphin/browser/extensions/c;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    if-ne v0, v1, :cond_2

    .line 106
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/extensions/ExtensionInfo;

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ak;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".Extension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "old_addons"

    const/4 v4, 0x1

    const v5, 0x7fffffff

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/extensions/ExtensionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 109
    iget-object v1, p0, Lcom/dolphin/browser/extensions/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    new-instance v1, Lcom/dolphin/browser/extensions/n;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/extensions/n;-><init>(Lcom/dolphin/browser/extensions/a;Lcom/dolphin/browser/extensions/ExtensionInfo;)V

    .line 111
    sget-object v2, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/n;->a(Lcom/dolphin/browser/extensions/c;)V

    .line 112
    iget-object v2, p0, Lcom/dolphin/browser/extensions/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :goto_0
    sget-object v0, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/ak;->b:Lcom/dolphin/browser/extensions/c;

    .line 127
    :cond_0
    :goto_1
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/extensions/ak;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/n;

    .line 115
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getTypeNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/n;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 122
    :cond_2
    sget-object v1, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    if-eq v0, v1, :cond_0

    .line 123
    iput-object v0, p0, Lcom/dolphin/browser/extensions/ak;->b:Lcom/dolphin/browser/extensions/c;

    goto :goto_1
.end method

.method g()V
    .locals 6

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ak;->e()Ljava/util/Collection;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 156
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/extensions/ak;->j:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->q()Landroid/content/Context;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method h()V
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ak;->e()Ljava/util/Collection;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 168
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/extensions/ak;->m:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method i()V
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ak;->e()Ljava/util/Collection;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 180
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/extensions/ak;->n:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method j()V
    .locals 4

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ak;->e()Ljava/util/Collection;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 192
    :try_start_0
    sget-object v2, Lcom/dolphin/browser/extensions/ak;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method
