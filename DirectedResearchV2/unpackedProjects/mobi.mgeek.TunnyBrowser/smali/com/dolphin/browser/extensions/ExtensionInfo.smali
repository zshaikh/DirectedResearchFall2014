.class public Lcom/dolphin/browser/extensions/ExtensionInfo;
.super Ljava/lang/Object;
.source "ExtensionInfo.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/extensions/ExtensionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 7

    .prologue
    .line 57
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/extensions/ExtensionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIZ)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIZ)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->a:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->b:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->c:[Ljava/lang/String;

    .line 66
    iput p4, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->d:I

    .line 67
    iput p5, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->e:I

    .line 68
    iput-boolean p6, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->f:Z

    .line 69
    return-void
.end method


# virtual methods
.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSDK()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->e:I

    return v0
.end method

.method public getMinSDK()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->d:I

    return v0
.end method

.method public getTypeNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    const-string v0, "{ApplicationName:%s, ClassName:%s, TypeName:%s, MinSDK:%d, MaxSDK:%d, Hidden:%b}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->c:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/dolphin/browser/extensions/ExtensionInfo;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
