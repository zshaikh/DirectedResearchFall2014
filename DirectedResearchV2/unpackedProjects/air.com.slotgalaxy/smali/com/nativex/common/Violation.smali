.class public Lcom/nativex/common/Violation;
.super Ljava/lang/Object;
.source "Violation.java"


# instance fields
.field private entity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Entity"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Message"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/nativex/common/Violation;->entity:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/nativex/common/Violation;->message:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/nativex/common/Violation;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nativex/common/Violation;->entity:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nativex/common/Violation;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nativex/common/Violation;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "entity"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nativex/common/Violation;->entity:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nativex/common/Violation;->message:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nativex/common/Violation;->type:Ljava/lang/String;

    .line 60
    return-void
.end method
