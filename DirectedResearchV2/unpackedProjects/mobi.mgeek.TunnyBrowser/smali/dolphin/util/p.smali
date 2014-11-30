.class Ldolphin/util/p;
.super Ljava/lang/Object;
.source "PriorityMessageQueue.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Ldolphin/util/n;

.field b:Ldolphin/util/n;

.field final synthetic d:Ldolphin/util/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Ldolphin/util/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/util/p;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ldolphin/util/o;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Ldolphin/util/p;->d:Ldolphin/util/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Ldolphin/util/p;->a:Ldolphin/util/n;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
