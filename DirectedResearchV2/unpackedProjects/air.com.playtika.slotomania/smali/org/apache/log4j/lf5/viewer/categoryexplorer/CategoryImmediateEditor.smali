.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;
.super Ljavax/swing/tree/DefaultTreeCellEditor;
.source "CategoryImmediateEditor.java"


# instance fields
.field protected editingIcon:Ljavax/swing/Icon;

.field private renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;


# direct methods
.method public constructor <init>(Ljavax/swing/JTree;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;)V
    .locals 1
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "renderer"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;
    .param p3, "editor"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/tree/DefaultTreeCellEditor;-><init>(Ljavax/swing/JTree;Ljavax/swing/tree/DefaultTreeCellRenderer;Ljavax/swing/tree/TreeCellEditor;)V

    .line 44
    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->editingIcon:Ljavax/swing/Icon;

    .line 57
    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;

    .line 58
    invoke-virtual {p2, v0}, Ljavax/swing/JLabel;->setIcon(Ljavax/swing/Icon;)V

    .line 59
    invoke-virtual {p2, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setLeafIcon(Ljavax/swing/Icon;)V

    .line 60
    invoke-virtual {p2, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setOpenIcon(Ljavax/swing/Icon;)V

    .line 61
    invoke-virtual {p2, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setClosedIcon(Ljavax/swing/Icon;)V

    .line 63
    iput-object v0, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->editingIcon:Ljavax/swing/Icon;

    .line 64
    return-void
.end method


# virtual methods
.method protected canEditImmediately(Ljava/util/EventObject;)Z
    .locals 4
    .param p1, "e"    # Ljava/util/EventObject;

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 116
    .local v2, "rv":Z
    instance-of v3, p1, Ljava/awt/event/MouseEvent;

    if-eqz v3, :cond_0

    .line 117
    move-object v0, p1

    check-cast v0, Ljava/awt/event/MouseEvent;

    move-object v1, v0

    .line 118
    .local v1, "me":Ljava/awt/event/MouseEvent;
    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->inCheckBoxHitRegion(Ljava/awt/event/MouseEvent;)Z

    move-result v2

    .line 121
    .end local v1    # "me":Ljava/awt/event/MouseEvent;
    :cond_0
    return v2
.end method

.method protected determineOffset(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)V
    .locals 1
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "isSelected"    # Z
    .param p4, "expanded"    # Z
    .param p5, "leaf"    # Z
    .param p6, "row"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    iput v0, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->offset:I

    .line 129
    return-void
.end method

.method public inCheckBoxHitRegion(Ljava/awt/event/MouseEvent;)Z
    .locals 8
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    .line 85
    iget-object v5, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->tree:Ljavax/swing/JTree;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v6

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljavax/swing/JTree;->getPathForLocation(II)Ljavax/swing/tree/TreePath;

    move-result-object v3

    .line 87
    .local v3, "path":Ljavax/swing/tree/TreePath;
    if-nez v3, :cond_0

    .line 88
    const/4 v5, 0x0

    .line 106
    :goto_0
    return v5

    .line 90
    :cond_0
    invoke-virtual {v3}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 91
    .local v2, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v4, 0x0

    .line 97
    .local v4, "rv":Z
    iget-object v5, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->tree:Ljavax/swing/JTree;

    iget v6, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->lastRow:I

    invoke-virtual {v5, v6}, Ljavax/swing/JTree;->getRowBounds(I)Ljava/awt/Rectangle;

    move-result-object v0

    .line 98
    .local v0, "bounds":Ljava/awt/Rectangle;
    iget-object v5, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;

    invoke-virtual {v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->getCheckBoxOffset()Ljava/awt/Dimension;

    move-result-object v1

    .line 101
    .local v1, "checkBoxOffset":Ljava/awt/Dimension;
    iget v5, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->offset:I

    iget v6, v1, Ljava/awt/Dimension;->width:I

    add-int/2addr v5, v6

    iget v6, v1, Ljava/awt/Dimension;->height:I

    invoke-virtual {v0, v5, v6}, Ljava/awt/Rectangle;->translate(II)V

    .line 104
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getPoint()Ljava/awt/Point;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/awt/Rectangle;->contains(Ljava/awt/Point;)Z

    move-result v4

    .line 106
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public shouldSelectCell(Ljava/util/EventObject;)Z
    .locals 8
    .param p1, "e"    # Ljava/util/EventObject;

    .prologue
    .line 70
    const/4 v4, 0x0

    .line 72
    .local v4, "rv":Z
    instance-of v5, p1, Ljava/awt/event/MouseEvent;

    if-eqz v5, :cond_0

    .line 73
    move-object v0, p1

    check-cast v0, Ljava/awt/event/MouseEvent;

    move-object v1, v0

    .line 74
    .local v1, "me":Ljava/awt/event/MouseEvent;
    iget-object v5, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->tree:Ljavax/swing/JTree;

    invoke-virtual {v1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v6

    invoke-virtual {v1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljavax/swing/JTree;->getPathForLocation(II)Ljavax/swing/tree/TreePath;

    move-result-object v3

    .line 76
    .local v3, "path":Ljavax/swing/tree/TreePath;
    invoke-virtual {v3}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 79
    .local v2, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v2}, Ljavax/swing/tree/DefaultMutableTreeNode;->isLeaf()Z

    move-result v4

    .line 81
    .end local v1    # "me":Ljava/awt/event/MouseEvent;
    .end local v2    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v3    # "path":Ljavax/swing/tree/TreePath;
    :cond_0
    return v4
.end method
