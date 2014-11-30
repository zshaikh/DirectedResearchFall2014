.class public Lcom/redbox/android/model/SelectedKioskManager;
.super Ljava/lang/Object;
.source "SelectedKioskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/model/SelectedKioskManager$Inventory;
    }
.end annotation


# static fields
.field private static instance:Lcom/redbox/android/model/SelectedKioskManager;


# instance fields
.field doesExist:Z

.field isSelected:Z

.field private selected:Lcom/redbox/android/model/Kiosk;

.field private selectedInv:Lcom/redbox/android/model/SelectedKioskManager$Inventory;

.field private selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v2, p0, Lcom/redbox/android/model/SelectedKioskManager;->isSelected:Z

    .line 80
    invoke-direct {p0}, Lcom/redbox/android/model/SelectedKioskManager;->getSelectedFromDB()Lcom/redbox/android/model/Kiosk;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selected:Lcom/redbox/android/model/Kiosk;

    .line 81
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selected:Lcom/redbox/android/model/Kiosk;

    if-nez v0, :cond_0

    .line 82
    iput-boolean v2, p0, Lcom/redbox/android/model/SelectedKioskManager;->doesExist:Z

    .line 88
    :goto_0
    new-instance v0, Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    invoke-direct {v0, p0}, Lcom/redbox/android/model/SelectedKioskManager$Inventory;-><init>(Lcom/redbox/android/model/SelectedKioskManager;)V

    iput-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedInv:Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    .line 90
    return-void

    .line 84
    :cond_0
    iput-boolean v1, p0, Lcom/redbox/android/model/SelectedKioskManager;->doesExist:Z

    .line 85
    new-array v0, v1, [I

    iget-object v1, p0, Lcom/redbox/android/model/SelectedKioskManager;->selected:Lcom/redbox/android/model/Kiosk;

    invoke-virtual {v1}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/redbox/android/model/SelectedKioskManager;)Lcom/redbox/android/model/SelectedKioskManager$Inventory;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedInv:Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    return-object v0
.end method

.method static synthetic access$1(Lcom/redbox/android/model/SelectedKioskManager;)Lcom/redbox/android/adapter/KioskSelectedListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    return-object v0
.end method

.method public static getInstance()Lcom/redbox/android/model/SelectedKioskManager;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/redbox/android/model/SelectedKioskManager;->instance:Lcom/redbox/android/model/SelectedKioskManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/redbox/android/model/SelectedKioskManager;

    invoke-direct {v0}, Lcom/redbox/android/model/SelectedKioskManager;-><init>()V

    sput-object v0, Lcom/redbox/android/model/SelectedKioskManager;->instance:Lcom/redbox/android/model/SelectedKioskManager;

    .line 75
    :cond_0
    sget-object v0, Lcom/redbox/android/model/SelectedKioskManager;->instance:Lcom/redbox/android/model/SelectedKioskManager;

    return-object v0
.end method

.method private getSelectedFromDB()Lcom/redbox/android/model/Kiosk;
    .locals 3

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "k":Lcom/redbox/android/model/Kiosk;
    :try_start_0
    invoke-static {}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->getInstance()Lcom/redbox/android/adapter/SelectedKioskDBAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->getSelectedKiosk()Lcom/redbox/android/model/Kiosk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    if-nez v1, :cond_0

    .line 186
    const-string v2, "No selected Kiosk exists"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    const/4 v2, 0x0

    .line 189
    :goto_1
    return-object v2

    .line 181
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const-string v2, "Error while reading kisk db"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, v1

    .line 189
    goto :goto_1
.end method


# virtual methods
.method public changeSelectedKiosk(Lcom/redbox/android/model/Kiosk;)V
    .locals 4
    .param p1, "k"    # Lcom/redbox/android/model/Kiosk;

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-boolean v1, p0, Lcom/redbox/android/model/SelectedKioskManager;->doesExist:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/redbox/android/model/SelectedKioskManager;->selected:Lcom/redbox/android/model/Kiosk;

    invoke-virtual {v1}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 101
    :cond_0
    invoke-static {}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->getInstance()Lcom/redbox/android/adapter/SelectedKioskDBAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->selectKiosk(Lcom/redbox/android/model/Kiosk;)J

    .line 102
    iput-object p1, p0, Lcom/redbox/android/model/SelectedKioskManager;->selected:Lcom/redbox/android/model/Kiosk;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selected Kiosk : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/redbox/android/model/SelectedKioskManager;->selected:Lcom/redbox/android/model/Kiosk;

    invoke-virtual {v2}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-array v0, v3, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/redbox/android/model/SelectedKioskManager;->selected:Lcom/redbox/android/model/Kiosk;

    invoke-virtual {v2}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 105
    .local v0, "kioskId":[I
    iget-object v1, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    invoke-interface {v1}, Lcom/redbox/android/adapter/KioskSelectedListener;->selectedKioskChanged()V

    .line 110
    .end local v0    # "kioskId":[I
    :cond_1
    iput-object p1, p0, Lcom/redbox/android/model/SelectedKioskManager;->selected:Lcom/redbox/android/model/Kiosk;

    .line 112
    iput-boolean v3, p0, Lcom/redbox/android/model/SelectedKioskManager;->doesExist:Z

    .line 113
    new-instance v1, Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    invoke-direct {v1, p0}, Lcom/redbox/android/model/SelectedKioskManager$Inventory;-><init>(Lcom/redbox/android/model/SelectedKioskManager;)V

    iput-object v1, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedInv:Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    .line 115
    invoke-virtual {p0}, Lcom/redbox/android/model/SelectedKioskManager;->selectKiosk()V

    .line 117
    return-void
.end method

.method public deSelectKiosk()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->isSelected:Z

    .line 165
    const-string v0, "Calling selectedKioskListener"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    invoke-interface {v0}, Lcom/redbox/android/adapter/KioskSelectedListener;->kisokSelectionStateChanged()V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "selectedKioskListener Null"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doesExist()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->doesExist:Z

    return v0
.end method

.method public getInventoryMovies()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedInv:Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    invoke-virtual {v0}, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->getSelectedInvMovieIDs()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelected()Lcom/redbox/android/model/Kiosk;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selected:Lcom/redbox/android/model/Kiosk;

    return-object v0
.end method

.method public getSelectedInv()Lcom/redbox/android/model/SelectedKioskManager$Inventory;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedInv:Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedInv:Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    invoke-virtual {v0}, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->isSelected:Z

    return v0
.end method

.method public kioskStateChangedListener(Lcom/redbox/android/adapter/KioskSelectedListener;)V
    .locals 0
    .param p1, "selectedKioskListener"    # Lcom/redbox/android/adapter/KioskSelectedListener;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    .line 220
    return-void
.end method

.method public movieExistsInSelectedKiosk(I)Z
    .locals 1
    .param p1, "movieId"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedInv:Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    invoke-virtual {v0, p1}, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->movieExists(I)Z

    move-result v0

    return v0
.end method

.method public selectKiosk()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 120
    iput-boolean v2, p0, Lcom/redbox/android/model/SelectedKioskManager;->isSelected:Z

    .line 122
    invoke-virtual {p0}, Lcom/redbox/android/model/SelectedKioskManager;->isNew()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/redbox/android/model/SelectedKioskManager;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-array v0, v2, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/redbox/android/model/SelectedKioskManager;->getSelected()Lcom/redbox/android/model/Kiosk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 127
    .local v0, "kiosks":[I
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v1

    .line 128
    new-instance v2, Lcom/redbox/android/model/SelectedKioskManager$1;

    invoke-direct {v2, p0}, Lcom/redbox/android/model/SelectedKioskManager$1;-><init>(Lcom/redbox/android/model/SelectedKioskManager;)V

    .line 127
    invoke-virtual {v1, v2, v0}, Lcom/redbox/android/http/ServerCommunicationHandler;->getKioskInventory(Lcom/redbox/android/http/KioskInventoryCallHandler;[I)V

    .line 161
    .end local v0    # "kiosks":[I
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v1, "Calling selectedKioskListener"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedKioskListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    invoke-interface {v1}, Lcom/redbox/android/adapter/KioskSelectedListener;->kisokSelectionStateChanged()V

    goto :goto_0

    .line 157
    :cond_1
    const-string v1, "selectedKioskListener Null"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectionExists()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->doesExist:Z

    return v0
.end method

.method public updateInventory(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "Inv"    # Lorg/json/JSONArray;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/redbox/android/model/SelectedKioskManager;->selectedInv:Lcom/redbox/android/model/SelectedKioskManager$Inventory;

    invoke-virtual {v0, p1}, Lcom/redbox/android/model/SelectedKioskManager$Inventory;->update(Lorg/json/JSONArray;)V

    .line 215
    return-void
.end method
