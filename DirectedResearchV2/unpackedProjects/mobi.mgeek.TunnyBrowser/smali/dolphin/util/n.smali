.class public Ldolphin/util/n;
.super Ljava/lang/Object;
.source "PriorityMessage.java"


# static fields
.field private static final g:Ljava/lang/Object;

.field private static h:Ldolphin/util/n;

.field private static i:I


# instance fields
.field public a:Landroid/os/Message;

.field b:Ldolphin/util/j;

.field c:I

.field d:J

.field e:Ldolphin/util/n;

.field f:Ldolphin/util/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldolphin/util/n;->g:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    sput v0, Ldolphin/util/n;->i:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Ldolphin/util/n;->b:Ldolphin/util/j;

    .line 57
    iget-object v0, p0, Ldolphin/util/n;->a:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Ldolphin/util/n;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 59
    :cond_0
    iput-object v1, p0, Ldolphin/util/n;->a:Landroid/os/Message;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldolphin/util/n;->d:J

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/util/n;->c:I

    .line 62
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Ldolphin/util/n;->a()V

    .line 74
    sget-object v1, Ldolphin/util/n;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    sget v0, Ldolphin/util/n;->i:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 76
    sget-object v0, Ldolphin/util/n;->h:Ldolphin/util/n;

    iput-object v0, p0, Ldolphin/util/n;->f:Ldolphin/util/n;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/util/n;->e:Ldolphin/util/n;

    .line 79
    sput-object p0, Ldolphin/util/n;->h:Ldolphin/util/n;

    .line 80
    sget v0, Ldolphin/util/n;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ldolphin/util/n;->i:I

    .line 82
    :cond_0
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
