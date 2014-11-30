.class public Lcom/nativex/common/Message;
.super Ljava/lang/Object;
.source "Message.java"


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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/nativex/common/Message;->referenceName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/nativex/common/Message;->displayName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/nativex/common/Message;->displayText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nativex/common/Message;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nativex/common/Message;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nativex/common/Message;->referenceName:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nativex/common/Message;->displayName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayText"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/nativex/common/Message;->displayText:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setReferenceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nativex/common/Message;->referenceName:Ljava/lang/String;

    .line 39
    return-void
.end method
