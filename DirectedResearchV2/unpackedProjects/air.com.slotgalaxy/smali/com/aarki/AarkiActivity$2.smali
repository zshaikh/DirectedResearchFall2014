.class final Lcom/aarki/AarkiActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aarki/AarkiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/aarki/AarkiActivity;


# direct methods
.method constructor <init>(Lcom/aarki/AarkiActivity;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/aarki/AarkiActivity$2;->a:Lcom/aarki/AarkiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/aarki/AarkiActivity$2;->a:Lcom/aarki/AarkiActivity;

    invoke-virtual {v0}, Lcom/aarki/AarkiActivity;->finish()V

    .line 206
    return-void
.end method
