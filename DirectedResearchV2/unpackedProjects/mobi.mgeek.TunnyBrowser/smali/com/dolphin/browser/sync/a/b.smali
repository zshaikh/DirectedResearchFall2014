.class public Lcom/dolphin/browser/sync/a/b;
.super Ljava/lang/Object;
.source "SyncConfigFactory.java"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->a:Ljava/lang/String;

    .line 13
    const-wide/32 v0, 0x6ddd00

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->b:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->c:Ljava/lang/String;

    .line 15
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->d:Ljava/lang/String;

    .line 17
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pref_bookmark_sync_interval"

    aput-object v1, v0, v2

    const-string v1, "pref_bookmark_sync_on"

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->e:[Ljava/lang/String;

    .line 22
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/dolphin/browser/sync/a/b;->b:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/sync/a/b;->d:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->f:[Ljava/lang/String;

    .line 27
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pref_desktop_bookmark_sync_interval"

    aput-object v1, v0, v2

    const-string v1, "pref_desktop_bookmark_sync_on"

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->g:[Ljava/lang/String;

    .line 32
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/dolphin/browser/sync/a/b;->b:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/sync/a/b;->d:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->h:[Ljava/lang/String;

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pref_history_sync_interval"

    aput-object v1, v0, v2

    const-string v1, "pref_history_sync_on"

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->i:[Ljava/lang/String;

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/dolphin/browser/sync/a/b;->b:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/sync/a/b;->c:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->j:[Ljava/lang/String;

    .line 47
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pref_tab_sync_interval"

    aput-object v1, v0, v2

    const-string v1, "pref_tab_sync_on"

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->k:[Ljava/lang/String;

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/dolphin/browser/sync/a/b;->b:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/sync/a/b;->d:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->l:[Ljava/lang/String;

    .line 57
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pref_sync_interval"

    aput-object v1, v0, v2

    const-string v1, "sync_on"

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->m:[Ljava/lang/String;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/dolphin/browser/sync/a/b;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/sync/a/b;->d:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/sync/a/b;->n:[Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/dolphin/browser/sync/a/a;
    .locals 3

    .prologue
    .line 68
    sget-object v1, Lcom/dolphin/browser/sync/a/b;->m:[Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/dolphin/browser/sync/a/b;->n:[Ljava/lang/String;

    .line 70
    sparse-switch p0, :sswitch_data_0

    .line 97
    :goto_0
    new-instance v2, Lcom/dolphin/browser/sync/a/c;

    invoke-direct {v2, v1, v0}, Lcom/dolphin/browser/sync/a/c;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 98
    return-object v2

    .line 72
    :sswitch_0
    sget-object v1, Lcom/dolphin/browser/sync/a/b;->e:[Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/dolphin/browser/sync/a/b;->f:[Ljava/lang/String;

    goto :goto_0

    .line 77
    :sswitch_1
    sget-object v1, Lcom/dolphin/browser/sync/a/b;->k:[Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/dolphin/browser/sync/a/b;->l:[Ljava/lang/String;

    goto :goto_0

    .line 82
    :sswitch_2
    sget-object v1, Lcom/dolphin/browser/sync/a/b;->i:[Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/dolphin/browser/sync/a/b;->j:[Ljava/lang/String;

    goto :goto_0

    .line 89
    :sswitch_3
    sget-object v1, Lcom/dolphin/browser/sync/a/b;->g:[Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/dolphin/browser/sync/a/b;->h:[Ljava/lang/String;

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_3
        0xc0 -> :sswitch_3
    .end sparse-switch
.end method
