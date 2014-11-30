.class public Lcom/dolphin/browser/extensions/n;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/extensions/n;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected final b:Lcom/dolphin/browser/extensions/a;

.field protected final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ljava/lang/String;

.field protected e:I

.field protected f:Lcom/dolphin/browser/extensions/c;

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Z


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/a;Lcom/dolphin/browser/extensions/ExtensionInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/dolphin/browser/extensions/c;->d:Lcom/dolphin/browser/extensions/c;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/n;->f:Lcom/dolphin/browser/extensions/c;

    .line 79
    iput-object p1, p0, Lcom/dolphin/browser/extensions/n;->b:Lcom/dolphin/browser/extensions/a;

    .line 80
    const-string v0, "Extension"

    const-string v1, "Load extension info %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/a;->d()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 84
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/a;->f()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/n;->a:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/n;->c:Ljava/util/Set;

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->c:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getTypeNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/ExtensionInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/extensions/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/n;->d:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/n;->g:Z

    .line 89
    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/ExtensionInfo;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/n;->j:Z

    .line 90
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/dolphin/browser/extensions/a;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/dolphin/browser/extensions/a;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/dolphin/browser/extensions/c;->d:Lcom/dolphin/browser/extensions/c;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/n;->f:Lcom/dolphin/browser/extensions/c;

    .line 99
    iput-object p1, p0, Lcom/dolphin/browser/extensions/n;->a:Ljava/lang/Object;

    .line 100
    iput-object p2, p0, Lcom/dolphin/browser/extensions/n;->b:Lcom/dolphin/browser/extensions/a;

    .line 101
    iput-object p3, p0, Lcom/dolphin/browser/extensions/n;->c:Ljava/util/Set;

    .line 102
    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/extensions/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/n;->d:Ljava/lang/String;

    .line 103
    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/n;->g:Z

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/n;->j:Z

    .line 105
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/extensions/n;)I
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->e()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/dolphin/browser/extensions/n;->e:I

    .line 163
    return-void
.end method

.method a(Lcom/dolphin/browser/extensions/c;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/dolphin/browser/extensions/n;->f:Lcom/dolphin/browser/extensions/c;

    .line 339
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 135
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/dolphin/browser/extensions/n;->h:Z

    .line 179
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    sget-object v0, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/extensions/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    .line 259
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IBaseExtension;->onExtensionClick(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 260
    if-eqz v0, :cond_0

    move v0, v1

    .line 276
    :goto_0
    return v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->b:Lcom/dolphin/browser/extensions/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->r()Landroid/content/Intent;

    move-result-object v0

    .line 268
    if-nez v0, :cond_1

    move v0, v2

    .line 269
    goto :goto_0

    .line 271
    :cond_1
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_2

    .line 272
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    :cond_2
    const-string v3, "is_launched_from_browser"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    invoke-static {p1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move v0, v2

    .line 276
    goto :goto_0
.end method

.method public b()Lcom/dolphin/browser/extensions/a;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->b:Lcom/dolphin/browser/extensions/a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/dolphin/browser/extensions/n;->i:Z

    .line 299
    return-void
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->c:Ljava/util/Set;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/n;Z)V

    .line 307
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/dolphin/browser/extensions/n;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/n;->a(Lcom/dolphin/browser/extensions/n;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->a:Ljava/lang/Object;

    return-object v0
.end method

.method d(Z)V
    .locals 2

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/dolphin/browser/extensions/n;->g:Z

    .line 311
    sget-object v0, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/extensions/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    .line 314
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->onEnable()V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->onDisable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/dolphin/browser/extensions/n;->e:I

    return v0
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/dolphin/browser/extensions/n;->j:Z

    .line 351
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 196
    instance-of v0, p1, Lcom/dolphin/browser/extensions/n;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->d:Ljava/lang/String;

    check-cast p1, Lcom/dolphin/browser/extensions/n;

    iget-object v1, p1, Lcom/dolphin/browser/extensions/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/n;->h:Z

    return v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    sget-object v0, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/extensions/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    .line 212
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->getExtensionTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->b:Lcom/dolphin/browser/extensions/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->m()Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_0
    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 225
    sget-object v0, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/extensions/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    .line 228
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->getExtensionDescription()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 233
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->b:Lcom/dolphin/browser/extensions/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->p()Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_0
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public j()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    sget-object v0, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/extensions/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    .line 244
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->getExtensionIcon()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 249
    :goto_0
    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->b:Lcom/dolphin/browser/extensions/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 252
    :cond_0
    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/n;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->b:Lcom/dolphin/browser/extensions/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->b:Lcom/dolphin/browser/extensions/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/n;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/n;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/dolphin/browser/extensions/c;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/dolphin/browser/extensions/n;->f:Lcom/dolphin/browser/extensions/c;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/n;->j:Z

    return v0
.end method
