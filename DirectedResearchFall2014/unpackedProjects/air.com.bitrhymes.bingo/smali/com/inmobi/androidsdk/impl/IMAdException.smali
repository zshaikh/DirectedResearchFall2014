.class public final Lcom/inmobi/androidsdk/impl/IMAdException;
.super Ljava/lang/Exception;
.source "IMAdException.java"


# static fields
.field public static final INVALID_APP_ID:I = 0x320

.field public static final INVALID_REQUEST:I = 0x12c

.field public static final NO_FILL:I = 0x64

.field public static final PARSE_ERROR:I = 0xc8

.field public static final SANDBOX_BADIP:I = 0x1f4

.field public static final SANDBOX_OOF:I = 0x190

.field public static final SANDBOX_UA:I = 0x2bc

.field public static final SANDBOX_UAND:I = 0x258

.field private static final serialVersionUID:J = -0x367500f272604013L


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    const/16 v0, 0x12c

    iput v0, p0, Lcom/inmobi/androidsdk/impl/IMAdException;->a:I

    .line 41
    iput p2, p0, Lcom/inmobi/androidsdk/impl/IMAdException;->a:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    const/16 v0, 0x12c

    iput v0, p0, Lcom/inmobi/androidsdk/impl/IMAdException;->a:I

    .line 35
    iput p3, p0, Lcom/inmobi/androidsdk/impl/IMAdException;->a:I

    .line 36
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/inmobi/androidsdk/impl/IMAdException;->a:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/inmobi/androidsdk/impl/IMAdException;->a:I

    .line 50
    return-void
.end method
