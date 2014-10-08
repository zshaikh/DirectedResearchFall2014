.class Lcom/fusepowered/m1/android/MMLayout$2;
.super Ljava/lang/Object;
.source "MMLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMLayout;->internalSetCloseArea(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMLayout;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMLayout;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMLayout$2;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout$2;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMLayout;->closeAreaTouched()V

    .line 367
    return-void
.end method
