.class Lcom/apsalar/sdk/ApsalarItem;
.super Ljava/lang/Object;
.source "Apsalar.java"


# instance fields
.field public connected:Ljava/lang/Boolean;

.field public name:Ljava/lang/String;

.field public registered:Ljava/lang/Boolean;

.field public val:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p1, p0, Lcom/apsalar/sdk/ApsalarItem;->name:Ljava/lang/String;

    .line 763
    iput-object p2, p0, Lcom/apsalar/sdk/ApsalarItem;->val:Ljava/lang/Object;

    .line 766
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarItem;->connected:Ljava/lang/Boolean;

    .line 769
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarItem;->registered:Ljava/lang/Boolean;

    .line 770
    return-void
.end method
