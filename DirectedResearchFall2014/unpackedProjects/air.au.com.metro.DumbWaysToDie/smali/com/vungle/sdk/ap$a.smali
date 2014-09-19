.class public final Lcom/vungle/sdk/ap$a;
.super Lcom/vungle/sdk/ap;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/vungle/sdk/av;

.field private final b:Lcom/vungle/sdk/ap$a;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/vungle/sdk/bb;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/vungle/sdk/aw;


# direct methods
.method public constructor <init>(Lcom/vungle/sdk/av;Lcom/vungle/sdk/aw;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/sdk/av;",
            "Lcom/vungle/sdk/aw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/vungle/sdk/bb;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/vungle/sdk/ap;-><init>()V

    .line 146
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "linker"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "plugin"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "staticInjections"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "injectableTypes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/ap$a;->b:Lcom/vungle/sdk/ap$a;

    .line 152
    iput-object p1, p0, Lcom/vungle/sdk/ap$a;->a:Lcom/vungle/sdk/av;

    .line 153
    iput-object p2, p0, Lcom/vungle/sdk/ap$a;->e:Lcom/vungle/sdk/aw;

    .line 154
    iput-object p3, p0, Lcom/vungle/sdk/ap$a;->c:Ljava/util/Map;

    .line 155
    iput-object p4, p0, Lcom/vungle/sdk/ap$a;->d:Ljava/util/Map;

    .line 156
    return-void
.end method

.method private a(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/sdk/aq;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/sdk/aq",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    move-object v1, p0

    .line 276
    :goto_0
    if-eqz v1, :cond_0

    .line 277
    iget-object v0, v1, Lcom/vungle/sdk/ap$a;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 278
    if-nez v0, :cond_0

    .line 276
    iget-object v1, v1, Lcom/vungle/sdk/ap$a;->b:Lcom/vungle/sdk/ap$a;

    goto :goto_0

    .line 280
    :cond_0
    if-nez v0, :cond_1

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No inject registered for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". You must explicitly add it to the \'injects\' option in one of your modules."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/vungle/sdk/ap$a;->a:Lcom/vungle/sdk/av;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/vungle/sdk/ap$a;->a:Lcom/vungle/sdk/av;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v0, p1, v3}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Lcom/vungle/sdk/aq;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/vungle/sdk/aq;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/vungle/sdk/ap$a;->a:Lcom/vungle/sdk/av;

    invoke-virtual {v2}, Lcom/vungle/sdk/av;->a()V

    .line 289
    iget-object v2, p0, Lcom/vungle/sdk/ap$a;->a:Lcom/vungle/sdk/av;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v0, p1, v3}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Lcom/vungle/sdk/aq;

    move-result-object v0

    .line 291
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vungle/sdk/ap$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/sdk/bb;

    .line 196
    if-nez v1, :cond_0

    .line 197
    iget-object v3, p0, Lcom/vungle/sdk/ap$a;->e:Lcom/vungle/sdk/aw;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v3, v1}, Lcom/vungle/sdk/aw;->a(Ljava/lang/Class;)Lcom/vungle/sdk/bb;

    move-result-object v1

    .line 198
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    .line 200
    iget-object v1, p0, Lcom/vungle/sdk/ap$a;->a:Lcom/vungle/sdk/av;

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/bb;->a(Lcom/vungle/sdk/av;)V

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p1}, Lcom/vungle/sdk/at;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 247
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 249
    invoke-direct {p0, v2, v1, v0}, Lcom/vungle/sdk/ap$a;->a(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/sdk/aq;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    invoke-static {p1}, Lcom/vungle/sdk/at;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/sdk/at;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 258
    invoke-direct {p0, v1, v0, v0}, Lcom/vungle/sdk/ap$a;->a(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/sdk/aq;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p1}, Lcom/vungle/sdk/aq;->a(Ljava/lang/Object;)V

    .line 261
    return-object p1
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vungle/sdk/ap$a;->a:Lcom/vungle/sdk/av;

    monitor-enter v0

    .line 234
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/sdk/ap$a;->b()V

    .line 235
    iget-object v1, p0, Lcom/vungle/sdk/ap$a;->a:Lcom/vungle/sdk/av;

    invoke-virtual {v1}, Lcom/vungle/sdk/av;->a()V

    .line 236
    invoke-direct {p0}, Lcom/vungle/sdk/ap$a;->b()V

    .line 237
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v0, p0, Lcom/vungle/sdk/ap$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/sdk/bb;

    invoke-virtual {p0}, Lcom/vungle/sdk/bb;->a()V

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 242
    :cond_0
    return-void
.end method
