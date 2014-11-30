.class public final Lcom/aarki/AarkiActivity$HydraJsInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aarki/AarkiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HydraJsInterface"
.end annotation


# instance fields
.field private synthetic a:Lcom/aarki/AarkiActivity;


# direct methods
.method public constructor <init>(Lcom/aarki/AarkiActivity;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/aarki/AarkiActivity$HydraJsInterface;->a:Lcom/aarki/AarkiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final exit()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/aarki/AarkiActivity$HydraJsInterface;->a:Lcom/aarki/AarkiActivity;

    invoke-virtual {v0}, Lcom/aarki/AarkiActivity;->finish()V

    .line 294
    sget-object v0, Lcom/aarki/Aarki$Status;->OK:Lcom/aarki/Aarki$Status;

    invoke-static {v0}, Lcom/aarki/Aarki;->a(Lcom/aarki/Aarki$Status;)V

    .line 295
    return-void
.end method
