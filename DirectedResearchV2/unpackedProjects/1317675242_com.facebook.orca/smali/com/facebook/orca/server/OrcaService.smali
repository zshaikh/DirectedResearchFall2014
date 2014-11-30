.class public Lcom/facebook/orca/server/OrcaService;
.super Landroid/app/Service;
.source "OrcaService.java"


# instance fields
.field private a:Lcom/facebook/orca/app/ContextScope;

.field private b:Lcom/facebook/orca/protocol/WebServiceHandler;

.field private c:Lcom/facebook/orca/cache/CacheServiceHandler;

.field private d:Lcom/facebook/orca/location/LocationServiceHandler;

.field private e:Lcom/facebook/orca/server/PreProcessingServiceHandler;

.field private f:Lcom/facebook/orca/images/ImageSearchHandler;

.field private g:Lcom/facebook/orca/database/DbServiceHandler;

.field private h:Lcom/facebook/orca/users/AddressBookServiceHandler;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceHook;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceQueue;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

.field private n:Lcom/facebook/orca/server/OrcaServiceQueue;

.field private o:Lcom/facebook/orca/server/OrcaServiceQueue;

.field private p:Lcom/facebook/orca/server/OrcaServiceQueue;

.field private q:Lcom/facebook/orca/server/OrcaServiceQueue;

.field private r:Lcom/facebook/orca/server/OrcaServiceQueue;

.field private s:Lcom/facebook/orca/server/OrcaServiceQueue;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 52
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->l:Ljava/util/List;

    .line 238
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaService;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaService;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Lcom/facebook/orca/server/Operation;

    invoke-direct {v1, v0, p1, p2}, Lcom/facebook/orca/server/Operation;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 164
    const-string v2, "get_device_location"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->o:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/Operation;)V

    .line 179
    :goto_0
    return-object v0

    .line 166
    :cond_0
    const-string v2, "sync_address_book"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->p:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/Operation;)V

    goto :goto_0

    .line 168
    :cond_1
    const-string v2, "register_push"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->q:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/Operation;)V

    goto :goto_0

    .line 170
    :cond_2
    const-string v2, "image_search"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaService;->a()V

    .line 172
    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->r:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/Operation;)V

    goto :goto_0

    .line 173
    :cond_3
    const-string v2, "pushed_message"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->s:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/Operation;)V

    goto :goto_0

    .line 177
    :cond_4
    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->n:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/Operation;)V

    goto :goto_0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->r:Lcom/facebook/orca/server/OrcaServiceQueue;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/app/ContextScope;

    const-string v3, "ImageSearches"

    iget-object v4, p0, Lcom/facebook/orca/server/OrcaService;->f:Lcom/facebook/orca/images/ImageSearchHandler;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/app/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->r:Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 188
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->r:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->r:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a()V

    .line 191
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaService;Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaService;->a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v1

    .line 195
    if-eqz v1, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->m:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    return-object v0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 67
    invoke-static {p0}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 68
    const-class v0, Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/ContextScope;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/app/ContextScope;

    .line 69
    const-class v0, Lcom/facebook/orca/protocol/WebServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/WebServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->b:Lcom/facebook/orca/protocol/WebServiceHandler;

    .line 70
    const-class v0, Lcom/facebook/orca/cache/CacheServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/CacheServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/cache/CacheServiceHandler;

    .line 71
    const-class v0, Lcom/facebook/orca/location/LocationServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/LocationServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->d:Lcom/facebook/orca/location/LocationServiceHandler;

    .line 72
    const-class v0, Lcom/facebook/orca/server/PreProcessingServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/PreProcessingServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->e:Lcom/facebook/orca/server/PreProcessingServiceHandler;

    .line 73
    const-class v0, Lcom/facebook/orca/images/ImageSearchHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageSearchHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->f:Lcom/facebook/orca/images/ImageSearchHandler;

    .line 74
    const-class v0, Lcom/facebook/orca/database/DbServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/DbServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->g:Lcom/facebook/orca/database/DbServiceHandler;

    .line 75
    const-class v0, Lcom/facebook/orca/users/AddressBookServiceHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/AddressBookServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->h:Lcom/facebook/orca/users/AddressBookServiceHandler;

    .line 76
    new-instance v0, Lcom/facebook/orca/server/OrcaService$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/OrcaService$1;-><init>(Lcom/facebook/orca/server/OrcaService;)V

    invoke-static {v0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->i:Ljava/util/List;

    .line 78
    new-instance v0, Lcom/facebook/orca/server/OrcaService$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/OrcaService$2;-><init>(Lcom/facebook/orca/server/OrcaService;)V

    invoke-static {v0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->j:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;-><init>(Lcom/facebook/orca/server/OrcaService;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->m:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->e:Lcom/facebook/orca/server/PreProcessingServiceHandler;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->m:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/PreProcessingServiceHandler;->a(Lcom/facebook/orca/server/IOrcaService$Stub;)V

    .line 86
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/app/ContextScope;

    const-string v3, "Threads"

    new-instance v4, Lcom/facebook/orca/server/OrcaService$FilterChainLink;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->e:Lcom/facebook/orca/server/PreProcessingServiceHandler;

    new-instance v5, Lcom/facebook/orca/server/OrcaService$FilterChainLink;

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/cache/CacheServiceHandler;

    new-instance v7, Lcom/facebook/orca/server/OrcaService$FilterChainLink;

    iget-object v8, p0, Lcom/facebook/orca/server/OrcaService;->g:Lcom/facebook/orca/database/DbServiceHandler;

    new-instance v9, Lcom/facebook/orca/server/OrcaService$FilterChainLink;

    iget-object v10, p0, Lcom/facebook/orca/server/OrcaService;->b:Lcom/facebook/orca/protocol/WebServiceHandler;

    new-instance v11, Lcom/facebook/orca/server/OrcaService$TerminatingHandler;

    invoke-direct {v11, v12}, Lcom/facebook/orca/server/OrcaService$TerminatingHandler;-><init>(Lcom/facebook/orca/server/OrcaService$1;)V

    invoke-direct {v9, v10, v11}, Lcom/facebook/orca/server/OrcaService$FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v7, v8, v9}, Lcom/facebook/orca/server/OrcaService$FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v5, v6, v7}, Lcom/facebook/orca/server/OrcaService$FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v4, v1, v5}, Lcom/facebook/orca/server/OrcaService$FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    iget-object v5, p0, Lcom/facebook/orca/server/OrcaService;->i:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/app/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->n:Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->n:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/app/ContextScope;

    const-string v3, "Pushes"

    new-instance v4, Lcom/facebook/orca/server/OrcaService$FilterChainLink;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->e:Lcom/facebook/orca/server/PreProcessingServiceHandler;

    new-instance v5, Lcom/facebook/orca/server/OrcaService$FilterChainLink;

    iget-object v6, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/cache/CacheServiceHandler;

    new-instance v7, Lcom/facebook/orca/server/OrcaService$FilterChainLink;

    iget-object v8, p0, Lcom/facebook/orca/server/OrcaService;->g:Lcom/facebook/orca/database/DbServiceHandler;

    new-instance v9, Lcom/facebook/orca/server/OrcaService$FilterChainLink;

    iget-object v10, p0, Lcom/facebook/orca/server/OrcaService;->b:Lcom/facebook/orca/protocol/WebServiceHandler;

    new-instance v11, Lcom/facebook/orca/server/OrcaService$TerminatingHandler;

    invoke-direct {v11, v12}, Lcom/facebook/orca/server/OrcaService$TerminatingHandler;-><init>(Lcom/facebook/orca/server/OrcaService$1;)V

    invoke-direct {v9, v10, v11}, Lcom/facebook/orca/server/OrcaService$FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v7, v8, v9}, Lcom/facebook/orca/server/OrcaService$FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v5, v6, v7}, Lcom/facebook/orca/server/OrcaService$FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v4, v1, v5}, Lcom/facebook/orca/server/OrcaService$FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    iget-object v5, p0, Lcom/facebook/orca/server/OrcaService;->i:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/app/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->s:Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->s:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/app/ContextScope;

    const-string v3, "Location"

    iget-object v4, p0, Lcom/facebook/orca/server/OrcaService;->d:Lcom/facebook/orca/location/LocationServiceHandler;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/app/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->o:Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->o:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/app/ContextScope;

    const-string v3, "AddressBook"

    iget-object v4, p0, Lcom/facebook/orca/server/OrcaService;->h:Lcom/facebook/orca/users/AddressBookServiceHandler;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/app/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->p:Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->p:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->a:Lcom/facebook/orca/app/ContextScope;

    const-string v3, "Registration"

    new-instance v4, Lcom/facebook/orca/server/OrcaService$FilterChainLink;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->b:Lcom/facebook/orca/protocol/WebServiceHandler;

    new-instance v5, Lcom/facebook/orca/server/OrcaService$TerminatingHandler;

    invoke-direct {v5, v12}, Lcom/facebook/orca/server/OrcaService$TerminatingHandler;-><init>(Lcom/facebook/orca/server/OrcaService$1;)V

    invoke-direct {v4, v1, v5}, Lcom/facebook/orca/server/OrcaService$FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Lcom/facebook/orca/app/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->q:Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->q:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 126
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceHook;

    .line 130
    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->m:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    invoke-interface {v0, v2}, Lcom/facebook/orca/server/OrcaServiceHook;->a(Lcom/facebook/orca/server/IOrcaService$Stub;)V

    goto :goto_1

    .line 132
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 138
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b()V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceHook;

    .line 141
    iget-object v2, p0, Lcom/facebook/orca/server/OrcaService;->m:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    invoke-interface {v0, v2}, Lcom/facebook/orca/server/OrcaServiceHook;->b(Lcom/facebook/orca/server/IOrcaService$Stub;)V

    goto :goto_1

    .line 143
    :cond_1
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 153
    const/4 v0, 0x1

    return v0
.end method
