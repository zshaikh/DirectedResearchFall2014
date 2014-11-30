.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
.super Ljavax/swing/tree/DefaultTreeModel;
.source "CategoryExplorerModel.java"


# static fields
.field private static final serialVersionUID:J = -0x2f60907d0d57f51dL


# instance fields
.field protected _event:Ljava/awt/event/ActionEvent;

.field protected _listener:Ljava/awt/event/ActionListener;

.field protected _renderFatal:Z


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_renderFatal:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    .line 54
    new-instance v0, Ljava/awt/event/ActionEvent;

    const/16 v1, 0x3e9

    const-string v2, "Nodes Selection changed"

    invoke-direct {v0, p0, v1, v2}, Ljava/awt/event/ActionEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_event:Ljava/awt/event/ActionEvent;

    .line 68
    return-void
.end method


# virtual methods
.method public declared-synchronized addActionListener(Ljava/awt/event/ActionListener;)V
    .locals 1
    .param p1, "l"    # Ljava/awt/event/ActionListener;

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    invoke-static {v0, p1}, Ljava/awt/AWTEventMulticaster;->add(Ljava/awt/event/ActionListener;Ljava/awt/event/ActionListener;)Ljava/awt/event/ActionListener;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addCategory(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .locals 11
    .param p1, "path"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    .prologue
    .line 192
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 193
    .local v8, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v6, v8

    .line 195
    .local v6, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 196
    invoke-virtual {p1, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v2

    .line 199
    .local v2, "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v6}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v1

    .line 201
    .local v1, "children":Ljava/util/Enumeration;
    const/4 v0, 0x0

    .line 202
    .local v0, "categoryAlreadyExists":Z
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 203
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 204
    .local v5, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "pathLC":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 210
    move-object v6, v5

    .line 215
    .end local v5    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v7    # "pathLC":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 217
    new-instance v4, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;-><init>(Ljava/lang/String;)V

    .line 225
    .local v4, "newNode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v6}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v10

    invoke-virtual {p0, v4, v6, v10}, Ljavax/swing/tree/DefaultTreeModel;->insertNodeInto(Ljavax/swing/tree/MutableTreeNode;Ljavax/swing/tree/MutableTreeNode;I)V

    .line 226
    invoke-virtual {p0, v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->refresh(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    .line 229
    move-object v6, v4

    .line 195
    .end local v4    # "newNode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "categoryAlreadyExists":Z
    .end local v1    # "children":Ljava/util/Enumeration;
    .end local v2    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :cond_3
    return-object v6
.end method

.method public addLogRecord(Lorg/apache/log4j/lf5/LogRecord;)V
    .locals 8
    .param p1, "lr"    # Lorg/apache/log4j/lf5/LogRecord;

    .prologue
    const/4 v7, 0x1

    .line 74
    new-instance v5, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    .line 75
    .local v5, "path":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
    invoke-virtual {p0, v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->addCategory(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 76
    invoke-virtual {p0, v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v2

    .line 77
    .local v2, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecord()V

    .line 78
    iget-boolean v6, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_renderFatal:Z

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->isFatal()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    invoke-virtual {p0, v2}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v3

    .line 80
    .local v3, "nodes":[Ljavax/swing/tree/TreeNode;
    array-length v1, v3

    .line 85
    .local v1, "len":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sub-int v6, v1, v7

    if-ge v0, v6, :cond_0

    .line 86
    aget-object v4, v3, v0

    check-cast v4, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 87
    .local v4, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v4, v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setHasFatalChildren(Z)V

    .line 88
    invoke-virtual {p0, v4}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v4    # "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_0
    invoke-virtual {v2, v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setHasFatalRecords(Z)V

    .line 91
    invoke-virtual {p0, v2}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    .line 93
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v3    # "nodes":[Ljavax/swing/tree/TreeNode;
    :cond_1
    return-void
.end method

.method public getCategoryNode(Ljava/lang/String;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    invoke-direct {v0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "path":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v1

    return-object v1
.end method

.method public getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .locals 10
    .param p1, "path"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    .prologue
    .line 108
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 109
    .local v7, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v5, v7

    .line 111
    .local v5, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 112
    invoke-virtual {p1, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v2

    .line 115
    .local v2, "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v5}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v1

    .line 117
    .local v1, "children":Ljava/util/Enumeration;
    const/4 v0, 0x0

    .line 118
    .local v0, "categoryAlreadyExists":Z
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 119
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 120
    .local v4, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "pathLC":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 126
    move-object v5, v4

    .line 131
    .end local v4    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v6    # "pathLC":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 132
    const/4 v9, 0x0

    .line 136
    .end local v0    # "categoryAlreadyExists":Z
    .end local v1    # "children":Ljava/util/Enumeration;
    .end local v2    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :goto_1
    return-object v9

    .line 111
    .restart local v0    # "categoryAlreadyExists":Z
    .restart local v1    # "children":Ljava/util/Enumeration;
    .restart local v2    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "categoryAlreadyExists":Z
    .end local v1    # "children":Ljava/util/Enumeration;
    .end local v2    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :cond_3
    move-object v9, v5

    .line 136
    goto :goto_1
.end method

.method public getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    check-cast p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    return-object p0
.end method

.method public getTreePathToRoot(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;
    .locals 2
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljavax/swing/tree/TreePath;

    invoke-virtual {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isCategoryPathActive(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Z
    .locals 11
    .param p1, "path"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    .prologue
    .line 144
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 145
    .local v8, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v6, v8

    .line 146
    .local v6, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v0, 0x0

    .line 148
    .local v0, "active":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 149
    invoke-virtual {p1, v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v3

    .line 152
    .local v3, "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v6}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v2

    .line 154
    .local v2, "children":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 155
    .local v1, "categoryAlreadyExists":Z
    const/4 v0, 0x0

    .line 157
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 158
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 159
    .local v5, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, "pathLC":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 163
    const/4 v1, 0x1

    .line 165
    move-object v6, v5

    .line 167
    invoke-virtual {v6}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 168
    const/4 v0, 0x1

    .line 175
    .end local v5    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v7    # "pathLC":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 176
    :cond_2
    const/4 v10, 0x0

    .line 180
    .end local v1    # "categoryAlreadyExists":Z
    .end local v2    # "children":Ljava/util/Enumeration;
    .end local v3    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :goto_1
    return v10

    .line 148
    .restart local v1    # "categoryAlreadyExists":Z
    .restart local v2    # "children":Ljava/util/Enumeration;
    .restart local v3    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "categoryAlreadyExists":Z
    .end local v2    # "children":Ljava/util/Enumeration;
    .end local v3    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :cond_4
    move v10, v0

    .line 180
    goto :goto_1
.end method

.method protected notifyActionListeners()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_event:Ljava/awt/event/ActionEvent;

    invoke-interface {v0, v1}, Ljava/awt/event/ActionListener;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    .line 319
    :cond_0
    return-void
.end method

.method protected refresh(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 325
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method

.method public declared-synchronized removeActionListener(Ljava/awt/event/ActionListener;)V
    .locals 1
    .param p1, "l"    # Ljava/awt/event/ActionListener;

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    invoke-static {v0, p1}, Ljava/awt/AWTEventMulticaster;->remove(Ljava/awt/event/ActionListener;Ljava/awt/event/ActionListener;)Ljava/awt/event/ActionListener;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetAllNodeCounts()V
    .locals 3

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/tree/DefaultMutableTreeNode;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 292
    .local v1, "nodes":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 294
    .local v0, "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->resetNumberOfContainedRecords()V

    .line 295
    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    goto :goto_0

    .line 297
    .end local v0    # "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_0
    return-void
.end method

.method public setDescendantSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .locals 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "selected"    # Z

    .prologue
    .line 250
    invoke-virtual {p1}, Ljavax/swing/tree/DefaultMutableTreeNode;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 252
    .local v1, "descendants":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 255
    .local v0, "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 256
    invoke-virtual {v0, p2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 257
    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    goto :goto_0

    .line 260
    .end local v0    # "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->notifyActionListeners()V

    .line 261
    return-void
.end method

.method public setParentSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .locals 5
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "selected"    # Z

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v2

    .line 265
    .local v2, "nodes":[Ljavax/swing/tree/TreeNode;
    array-length v1, v2

    .line 270
    .local v1, "len":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 271
    aget-object v3, v2, v0

    check-cast v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 272
    .local v3, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v4

    if-eq v4, p2, :cond_0

    .line 273
    invoke-virtual {v3, p2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 274
    invoke-virtual {p0, v3}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    .line 270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    .end local v3    # "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->notifyActionListeners()V

    .line 278
    return-void
.end method

.method public update(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .locals 1
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "selected"    # Z

    .prologue
    .line 238
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    if-eqz p2, :cond_1

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->setParentSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V

    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->setDescendantSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V

    goto :goto_0
.end method
