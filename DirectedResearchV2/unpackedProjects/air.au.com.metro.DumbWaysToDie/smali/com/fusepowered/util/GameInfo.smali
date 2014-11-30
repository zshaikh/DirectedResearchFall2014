.class public Lcom/fusepowered/util/GameInfo;
.super Ljava/lang/Object;
.source "GameInfo.java"


# instance fields
.field private debug:Ljava/lang/String;

.field private encryptionBroken:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private gameVersion:Ljava/lang/String;

.field private inAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/InAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private jailBroken:Ljava/lang/String;

.field private noHash:Ljava/lang/String;

.field private pl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-string v2, "1"

    const-string v1, "0"

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "1"

    iput-object v2, p0, Lcom/fusepowered/util/GameInfo;->noHash:Ljava/lang/String;

    .line 19
    const-string v0, "1"

    iput-object v2, p0, Lcom/fusepowered/util/GameInfo;->debug:Ljava/lang/String;

    .line 20
    const-string v0, "0"

    iput-object v1, p0, Lcom/fusepowered/util/GameInfo;->jailBroken:Ljava/lang/String;

    .line 21
    const-string v0, "0"

    iput-object v1, p0, Lcom/fusepowered/util/GameInfo;->encryptionBroken:Ljava/lang/String;

    .line 22
    const-string v0, "0"

    iput-object v1, p0, Lcom/fusepowered/util/GameInfo;->pl:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "gameVersion"    # Ljava/lang/String;

    .prologue
    const-string v2, "1"

    const-string v1, "0"

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fusepowered/util/GameInfo;->gameId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/fusepowered/util/GameInfo;->gameVersion:Ljava/lang/String;

    .line 28
    const-string v0, "1"

    iput-object v2, p0, Lcom/fusepowered/util/GameInfo;->noHash:Ljava/lang/String;

    .line 29
    const-string v0, "1"

    iput-object v2, p0, Lcom/fusepowered/util/GameInfo;->debug:Ljava/lang/String;

    .line 30
    const-string v0, "0"

    iput-object v1, p0, Lcom/fusepowered/util/GameInfo;->jailBroken:Ljava/lang/String;

    .line 31
    const-string v0, "0"

    iput-object v1, p0, Lcom/fusepowered/util/GameInfo;->encryptionBroken:Ljava/lang/String;

    .line 32
    const-string v0, "0"

    iput-object v1, p0, Lcom/fusepowered/util/GameInfo;->pl:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fusepowered/util/GameInfo;->debug:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionBroken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fusepowered/util/GameInfo;->encryptionBroken:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fusepowered/util/GameInfo;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/util/GameInfo;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getGameVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/util/GameInfo;->gameVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInAppItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/InAppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fusepowered/util/GameInfo;->inAppItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getJailBroken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fusepowered/util/GameInfo;->jailBroken:Ljava/lang/String;

    return-object v0
.end method

.method public getNoHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/util/GameInfo;->noHash:Ljava/lang/String;

    return-object v0
.end method

.method public getPl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fusepowered/util/GameInfo;->pl:Ljava/lang/String;

    return-object v0
.end method

.method public setDebug(Ljava/lang/String;)V
    .locals 0
    .param p1, "debug"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fusepowered/util/GameInfo;->debug:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setEncryptionBroken(Ljava/lang/String;)V
    .locals 0
    .param p1, "encryptionBroken"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/fusepowered/util/GameInfo;->encryptionBroken:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameId"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fusepowered/util/GameInfo;->gameId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/fusepowered/util/GameInfo;->gameName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setGameVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameVersion"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fusepowered/util/GameInfo;->gameVersion:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setInAppItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/InAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "inAppItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/InAppItem;>;"
    iput-object p1, p0, Lcom/fusepowered/util/GameInfo;->inAppItems:Ljava/util/ArrayList;

    .line 100
    return-void
.end method

.method public setJailBroken(Ljava/lang/String;)V
    .locals 0
    .param p1, "jailBroken"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fusepowered/util/GameInfo;->jailBroken:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setNoHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "noHash"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fusepowered/util/GameInfo;->noHash:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPl(Ljava/lang/String;)V
    .locals 0
    .param p1, "pl"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fusepowered/util/GameInfo;->pl:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameInfo [gameId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/util/GameInfo;->gameId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gameVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/GameInfo;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gameName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/GameInfo;->gameName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", noHash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/GameInfo;->noHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/GameInfo;->debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", jailBroken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/GameInfo;->jailBroken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/GameInfo;->pl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encryptionBroken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/GameInfo;->encryptionBroken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inAppItems="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/GameInfo;->inAppItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
