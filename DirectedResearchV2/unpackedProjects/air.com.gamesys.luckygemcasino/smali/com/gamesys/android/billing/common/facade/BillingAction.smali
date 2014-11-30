.class public Lcom/gamesys/android/billing/common/facade/BillingAction;
.super Ljava/lang/Object;
.source "BillingAction.java"


# instance fields
.field public final actionToDo:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

.field public final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;Ljava/util/Map;)V
    .locals 0
    .param p1, "actionToDo"    # Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/gamesys/android/billing/common/facade/BillingAction;->actionToDo:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    .line 26
    iput-object p2, p0, Lcom/gamesys/android/billing/common/facade/BillingAction;->parameters:Ljava/util/Map;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "a"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 34
    instance-of v1, p1, Lcom/gamesys/android/billing/common/facade/BillingAction;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/gamesys/android/billing/common/facade/BillingAction;->actionToDo:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    check-cast p1, Lcom/gamesys/android/billing/common/facade/BillingAction;

    .end local p1    # "a":Ljava/lang/Object;
    iget-object v2, p1, Lcom/gamesys/android/billing/common/facade/BillingAction;->actionToDo:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 37
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/gamesys/android/billing/common/facade/BillingAction;->actionToDo:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {v0}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
