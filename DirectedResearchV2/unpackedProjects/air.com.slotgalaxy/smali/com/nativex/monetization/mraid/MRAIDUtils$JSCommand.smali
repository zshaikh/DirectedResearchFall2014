.class Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
.super Ljava/lang/Object;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSCommand"
.end annotation


# instance fields
.field private command:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

.field private jsObjectName:Ljava/lang/String;

.field private parameters:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    .locals 1
    .param p1, "command"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const-string v0, "mraid"

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->jsObjectName:Ljava/lang/String;

    .line 274
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->command:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;Lcom/nativex/monetization/mraid/MRAIDUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;
    .param p2, "x1"    # Lcom/nativex/monetization/mraid/MRAIDUtils$1;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;-><init>(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    return-void
.end method


# virtual methods
.method public getCommand()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->command:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    return-object v0
.end method

.method public getJSCall()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->jsObjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->command:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->getParamsAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParams()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->parameters:[Ljava/lang/String;

    return-object v0
.end method

.method public getParamsAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 296
    const-string v1, ""

    .line 297
    .local v1, "params":Ljava/lang/String;
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->parameters:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->parameters:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->parameters:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 299
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->parameters:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->parameters:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public setJsObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->jsObjectName:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public varargs setParams([Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->parameters:[Ljava/lang/String;

    .line 284
    return-void
.end method
