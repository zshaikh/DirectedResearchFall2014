.class public Lcom/dolphin/browser/q/b;
.super Ljava/lang/Object;
.source "SocialServiceRegistry.java"


# static fields
.field public static final a:Lcom/dolphin/browser/q/c;

.field public static final b:Lcom/dolphin/browser/q/c;

.field static final c:[Lcom/dolphin/browser/q/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/dolphin/browser/q/c;

    const/16 v1, 0x3e8

    const-string v2, "facebook"

    const-string v4, "145236405546547"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/dolphin/browser/q/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/q/b;->a:Lcom/dolphin/browser/q/c;

    .line 10
    new-instance v0, Lcom/dolphin/browser/q/c;

    const/16 v1, 0x1770

    const-string v2, "google"

    const-string v5, "https://accounts.google.com/ServiceLogin"

    const-string v6, "https://accounts.google.com/ServiceLoginAuth"

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/q/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/q/b;->b:Lcom/dolphin/browser/q/c;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolphin/browser/q/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/dolphin/browser/q/b;->a:Lcom/dolphin/browser/q/c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dolphin/browser/q/b;->b:Lcom/dolphin/browser/q/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/q/b;->c:[Lcom/dolphin/browser/q/c;

    return-void
.end method

.method public static a(I)Lcom/dolphin/browser/q/c;
    .locals 5

    .prologue
    .line 20
    sget-object v1, Lcom/dolphin/browser/q/b;->c:[Lcom/dolphin/browser/q/c;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 21
    iget v4, v3, Lcom/dolphin/browser/q/c;->a:I

    if-ne v4, p0, :cond_0

    .line 22
    return-object v3

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "social service does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
