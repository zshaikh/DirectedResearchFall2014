.class public Lcom/nativex/common/LogItem;
.super Ljava/lang/Object;
.source "LogItem.java"


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayName"
    .end annotation
.end field

.field private displayText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayText"
    .end annotation
.end field

.field private referenceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReferenceName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nativex/common/LogItem;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nativex/common/LogItem;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nativex/common/LogItem;->referenceName:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nativex/common/LogItem;->displayName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayText"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nativex/common/LogItem;->displayText:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setReferenceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nativex/common/LogItem;->referenceName:Ljava/lang/String;

    .line 42
    return-void
.end method
