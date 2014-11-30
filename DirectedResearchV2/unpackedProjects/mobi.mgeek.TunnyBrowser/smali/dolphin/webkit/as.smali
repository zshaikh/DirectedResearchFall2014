.class Ldolphin/webkit/as;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Ldolphin/webkit/eo;


# instance fields
.field public a:Ldolphin/webkit/JsPromptResult;

.field final synthetic b:Ldolphin/webkit/ae;

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Ldolphin/webkit/ae;)V
    .locals 1

    .prologue
    .line 185
    iput-object p1, p0, Ldolphin/webkit/as;->b:Ldolphin/webkit/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ldolphin/webkit/JsPromptResult;

    invoke-direct {v0, p0}, Ldolphin/webkit/JsPromptResult;-><init>(Ldolphin/webkit/eo;)V

    iput-object v0, p0, Ldolphin/webkit/as;->a:Ldolphin/webkit/JsPromptResult;

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/ae;Ldolphin/webkit/af;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Ldolphin/webkit/as;-><init>(Ldolphin/webkit/ae;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Ldolphin/webkit/as;->b:Ldolphin/webkit/ae;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/as;->b:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/as;->c:Z

    .line 197
    iget-boolean v0, p0, Ldolphin/webkit/as;->d:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Ldolphin/webkit/as;->b()V

    .line 200
    :cond_0
    return-void
.end method

.method public a(Ldolphin/webkit/JsResult;)V
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Ldolphin/webkit/as;->c:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Ldolphin/webkit/as;->b()V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/as;->d:Z

    goto :goto_0
.end method
