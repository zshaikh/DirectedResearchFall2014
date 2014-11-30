.class public Lcom/dolphin/browser/voice/command/i;
.super Ljava/lang/Object;
.source "VoiceAction.java"


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/dolphin/browser/voice/command/p;->a:Landroid/net/Uri;

    const-string v1, "actions"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/voice/command/i;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/i;->b:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/dolphin/browser/voice/command/i;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/voice/command/i;
    .locals 3

    .prologue
    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-string v0, "{\"command\":101,\"args\":\"%s\"}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v0, Lcom/dolphin/browser/voice/command/i;

    invoke-direct {v0, p1, v1}, Lcom/dolphin/browser/voice/command/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/database/Cursor;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/voice/command/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 45
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 56
    :cond_1
    return-object v0

    .line 47
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v1, "voice"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 49
    const-string v2, "action"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 50
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    new-instance v5, Lcom/dolphin/browser/voice/command/i;

    invoke-direct {v5, v3, v4}, Lcom/dolphin/browser/voice/command/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/dolphin/browser/voice/command/j;->a()Lcom/dolphin/browser/voice/command/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/voice/command/j;->a(Lcom/dolphin/browser/voice/command/i;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/i;->c:Ljava/lang/String;

    return-object v0
.end method
