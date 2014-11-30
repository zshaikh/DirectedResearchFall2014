.class public Lcom/appoxee/IdentifierNotFoundException;
.super Ljava/lang/Exception;
.source "IdentifierNotFoundException.java"


# instance fields
.field public id:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p2, p0, Lcom/appoxee/IdentifierNotFoundException;->id:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/appoxee/IdentifierNotFoundException;->type:Ljava/lang/String;

    .line 14
    return-void
.end method
