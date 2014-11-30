.class public final Lcom/flurry/android/monolithic/sdk/impl/oo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/flurry/android/monolithic/sdk/impl/on;

.field public static final b:Lcom/flurry/android/monolithic/sdk/impl/on;

.field public static final c:Lcom/flurry/android/monolithic/sdk/impl/on;

.field public static final d:Lcom/flurry/android/monolithic/sdk/impl/on;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const v12, 0x7fffffff

    const/16 v4, 0x3d

    const/4 v3, 0x1

    const/4 v11, 0x0

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 38
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/on;

    const-string v1, "MIME"

    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/16 v5, 0x4c

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/on;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/oo;->a:Lcom/flurry/android/monolithic/sdk/impl/on;

    .line 49
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/on;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oo;->a:Lcom/flurry/android/monolithic/sdk/impl/on;

    const-string v5, "MIME-NO-LINEFEEDS"

    invoke-direct {v0, v1, v5, v12}, Lcom/flurry/android/monolithic/sdk/impl/on;-><init>(Lcom/flurry/android/monolithic/sdk/impl/on;Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/oo;->b:Lcom/flurry/android/monolithic/sdk/impl/on;

    .line 56
    new-instance v5, Lcom/flurry/android/monolithic/sdk/impl/on;

    sget-object v6, Lcom/flurry/android/monolithic/sdk/impl/oo;->a:Lcom/flurry/android/monolithic/sdk/impl/on;

    const-string v7, "PEM"

    const/16 v10, 0x40

    move v8, v3

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/flurry/android/monolithic/sdk/impl/on;-><init>(Lcom/flurry/android/monolithic/sdk/impl/on;Ljava/lang/String;ZCI)V

    sput-object v5, Lcom/flurry/android/monolithic/sdk/impl/oo;->c:Lcom/flurry/android/monolithic/sdk/impl/on;

    .line 71
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v0, "+"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 74
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x5f

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 78
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/on;

    const-string v1, "MODIFIED-FOR-URL"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v11

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/on;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/oo;->d:Lcom/flurry/android/monolithic/sdk/impl/on;

    .line 79
    return-void
.end method

.method public static a()Lcom/flurry/android/monolithic/sdk/impl/on;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oo;->b:Lcom/flurry/android/monolithic/sdk/impl/on;

    return-object v0
.end method
