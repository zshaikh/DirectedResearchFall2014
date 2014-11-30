.class public Lcom/facebook/orca/database/AddressBookPeriodicRunner;
.super Ljava/lang/Object;
.source "AddressBookPeriodicRunner.java"


# static fields
.field private static a:J

.field private static b:J

.field private static m:Z

.field private static n:Z


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/app/AlarmManager;

.field private final e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

.field private final f:Lcom/facebook/orca/auth/AuthenticationManager;

.field private final g:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final h:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

.field private final i:Z

.field private j:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private k:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a:J

    .line 38
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b:J

    .line 58
    sput-boolean v2, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->m:Z

    .line 59
    sput-boolean v2, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/ops/OrcaServiceOperation;Z)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    .line 68
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->c:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    .line 70
    iput-object p4, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 71
    iput-object p2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->d:Landroid/app/AlarmManager;

    .line 72
    iput-object p5, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 73
    iput-boolean p6, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:Z

    .line 74
    new-instance v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    invoke-direct {v0, p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    iput-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    .line 76
    new-instance v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    invoke-virtual {p5, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;J)J
    .locals 0

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e()V

    return-void
.end method

.method private declared-synchronized e()V
    .locals 5

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:Z

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.orca.PROCESS_ADDRESSBOOK_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v1, "com.facebook.orca"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->c:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:J

    add-long/2addr v1, v3

    .line 132
    iget-object v3, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->d:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 161
    :goto_0
    return v0

    .line 145
    :cond_0
    sget-boolean v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->m:Z

    if-eqz v0, :cond_1

    move v0, v5

    .line 146
    goto :goto_0

    .line 147
    :cond_1
    sget-boolean v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->n:Z

    if-eqz v0, :cond_2

    move v0, v4

    .line 148
    goto :goto_0

    .line 151
    :cond_2
    iget-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->e:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    .line 156
    :cond_3
    iget-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    move v0, v4

    .line 158
    goto :goto_0

    :cond_4
    move v0, v5

    .line 161
    goto :goto_0
.end method

.method private declared-synchronized g()V
    .locals 4

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->e:Lcom/facebook/orca/database/DbUserPropertyKey;

    iget-wide v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 167
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:J

    .line 168
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 4

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 173
    sget-wide v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a:J

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:J

    .line 177
    :goto_0
    iget-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:J

    sget-wide v2, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:J

    .line 178
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 175
    :cond_0
    const-wide/16 v0, 0x2

    :try_start_1
    iget-wide v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 106
    return-void
.end method

.method declared-synchronized c()V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    iget-object v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "sync_address_book"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
